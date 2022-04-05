class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @synth = Synth.find(params[:synth_id])
    @review.user = current_user
    @review.synth = @synth

    if @review.save
      redirect_to synth_path(@synth)
    else
      render 'synths/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end

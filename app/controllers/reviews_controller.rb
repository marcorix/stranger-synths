class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @synth = Synth.find(params[:synth_id])
    @review.user = current_user
    @review.synth = @synth

    respond_to do |format|
      if @review.save
        format.html { redirect_to synth_path(@synth) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render 'synths/show' }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end

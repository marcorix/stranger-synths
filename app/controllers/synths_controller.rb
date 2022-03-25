class SynthsController < ApplicationController
  before_action :set_synth, only: [:show, :edit, :update, :destroy]

  def index
    @synths = Synth.all
  end

  def show; end

  def new
    @synth = Synth.new
  end

  def create
    @synth = Synth.new(synth_params)
    @synth.user = current_user

    if @synth.save
      redirect_to @synth, notice: 'List was succesfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    @synth.update(synth_params)
    redirect_to @synth
  end

  def destroy
    @synth.destroy
    redirect_to synths_path
  end

  private

  def set_synth
    @synth = Synth.find(params[:id])
  end

  def synth_params
    params.require(:synth).permit(:name, :brand, :price, :year, :polyphony, :description, :conditions, images: [])
  end

end

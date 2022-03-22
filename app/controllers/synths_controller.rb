class SynthsController < ApplicationController

  def index
    @synths = Synth.all
  end

  def new
    @synth = Synth.new
  end

  def create
    @synth = Synth.new(synth_params)
    @synth.user = current_user
    @synth.save
    redirect_to synths_path
  end

  private

  def synth_params
    params.require(:synth).permit(:name, :brand, :price, :year, :polyphony, :description, :conditions)
  end

end

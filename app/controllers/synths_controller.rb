class SynthsController < ApplicationController
  before_action :set_synth, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @synths = Synth.search_by_name_and_brand_and_category(params[:query])
    else
      @synths = Synth.all
    end
    @markers = @synths.geocoded.map do |synth|
      {
        lat: synth.latitude,
        lng: synth.longitude,
        info_window: render_to_string(partial: "info_window", locals: { synth: synth }),
        image_url: helpers.asset_url("marker.png")
      }
    end
  end

  def show
    @booking = Booking.new
  end

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
    params.require(:synth).permit(:name, :brand, :price, :category, :description, :conditions, :location, images: [])
  end

end

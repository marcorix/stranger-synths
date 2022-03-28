class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @synth = Synth.find(params[:synth_id])
    @booking.user = current_user
    @booking.synth = @synth

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'synths/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end

class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    params[:passenger_count].to_i.times do
      @booking.passengers.build
    end
  end

  def create
    booking = Booking.new(booking_params)

    if booking.save
      redirect_to flights_path
    else
      render :new
      puts booking.errors.full_messages
    end
  end

  private

    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end
end

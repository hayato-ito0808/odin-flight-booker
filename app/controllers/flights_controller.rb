class FlightsController < ApplicationController
  def index
    @airports = Airport.distinct.pluck(:name, :id)
    @flight_datetimes = Flight.distinct.pluck(:start_datetime)


    if params[:departure_airport_id].present? && params[:arrival_airport_id].present? && params[:start_datetime].present?

      @search_flights = Flight.where(
        departure_airport_id: params[:departure_airport_id],
        arrival_airport_id: params[:arrival_airport_id]
      ).where("DATE(start_datetime) = ?", params[:start_datetime])
      
    end
  end
end

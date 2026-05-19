# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Kansai = Airport.create(code: "KIX", name: "Kansai")
Haneda = Airport.create(code: "HND", name: "Haneda")
Itami = Airport.create(code: "ITM", name: "Itami")

Flight.create(departure_airport: Haneda, arrival_airport: Itami, start_datetime: "2026-05-20", flight_duration: 2)

Flight.create(departure_airport: Haneda, arrival_airport: Kansai, start_datetime: "2026-05-20", flight_duration: 1)

Flight.create(departure_airport: Kansai, arrival_airport: Itami, start_datetime: "2026-05-20", flight_duration: 4)
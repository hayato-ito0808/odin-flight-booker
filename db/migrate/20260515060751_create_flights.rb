class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.date :start_datetime
      t.integer :flight_duration

      t.timestamps
    end
  end
end

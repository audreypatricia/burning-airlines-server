json.extract! flight, :id, :date, :flight_to, :flight_from, :created_at, :updated_at, :airplane_id, :seats, :seat_selection
json.url flight_url(flight, format: :json)

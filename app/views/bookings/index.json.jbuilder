json.array!(@bookings) do |booking|
  json.extract! booking, :id, :start_date, :end_date, :booker_id_id, :flat_id_id
  json.url booking_url(booking, format: :json)
end

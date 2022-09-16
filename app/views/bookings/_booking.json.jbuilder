json.extract! booking, :id, :location, :latitude, :longitude, :check_in, :check_out, :adults, :children, :user_id, :flat_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)

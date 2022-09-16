json.extract! flat, :id, :title, :description, :location, :latitude, :longitude, :price_per_night, :check_in, :check_out, :guests, :bedrooms, :bathrooms, :wifi, :aircon, :rating, :user_id, :created_at, :updated_at
json.url flat_url(flat, format: :json)

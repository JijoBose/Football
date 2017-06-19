json.extract! venue, :id, :location, :created_at, :updated_at
json.url venue_url(venue, format: :json)

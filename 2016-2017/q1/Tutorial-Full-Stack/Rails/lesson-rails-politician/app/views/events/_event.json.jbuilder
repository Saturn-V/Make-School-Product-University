json.extract! event, :id, :title, :capacity, :created_at, :updated_at
json.url event_url(event, format: :json)
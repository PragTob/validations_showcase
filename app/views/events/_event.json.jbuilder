json.extract! event, :id, :name, :location, :date, :crew_arrives_at, :performers_arrive_at, :open_at, :starts_at, :ends_at, :created_at, :updated_at
json.url event_url(event, format: :json)

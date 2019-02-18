json.extract! appointment, :id, :starts_at, :ends_at, :type, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)

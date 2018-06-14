json.extract! conference, :id, :name, :date, :description, :place, :user_id, :created_at, :updated_at
json.url conference_url(conference, format: :json)

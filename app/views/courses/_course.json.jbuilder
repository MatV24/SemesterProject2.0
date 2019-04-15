json.extract! course, :id, :Name, :Number, :created_at, :updated_at
json.url course_url(course, format: :json)

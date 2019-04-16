json.extract! faculty, :id, :Lastname, :Firstname, :Title, :Email, :Phone, :created_at, :updated_at
json.url faculty_url(faculty, format: :json)

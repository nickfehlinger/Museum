json.extract! person, :id, :fname, :lname, :born, :died, :hometown, :created_at, :updated_at
json.url person_url(person, format: :json)

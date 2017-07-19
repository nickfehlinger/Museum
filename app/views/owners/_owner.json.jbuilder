json.extract! owner, :id, :person_id, :piece_id, :year_bought, :year_sold, :price_bought, :price_sold, :location_bought, :location_sold, :created_at, :updated_at
json.url owner_url(owner, format: :json)

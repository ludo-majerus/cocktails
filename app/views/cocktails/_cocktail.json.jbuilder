json.extract! cocktail, :id, :name, :description, :picture, :created_at, :updated_at
json.url cocktail_url(cocktail, format: :json)
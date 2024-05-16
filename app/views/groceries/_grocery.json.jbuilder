json.extract! grocery, :id, :grocery_name, :quantity, :category, :store_name, :pickup_time, :created_at, :updated_at
json.url grocery_url(grocery, format: :json)

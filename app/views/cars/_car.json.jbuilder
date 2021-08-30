json.extract! car, :id, :model, :dealership, :price, :is_new, :created_at, :updated_at
json.url car_url(car, format: :json)

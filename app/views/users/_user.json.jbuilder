json.extract! user, :id, :alias, :password, :type_of, :active, :created_at, :updated_at
json.url user_url(user, format: :json)

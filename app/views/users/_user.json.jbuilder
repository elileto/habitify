json.extract! user, :id, :firstName, :lastName, :password, :image_url, :email, :created_at, :updated_at
json.url user_url(user, format: :json)

json.extract! user, :id, :name_user, :avatar_user, :name_pantry_user, :address_user, :country_user, :phone_user, :created_at, :updated_at
json.url user_url(user, format: :json)

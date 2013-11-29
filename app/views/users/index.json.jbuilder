json.array!(@users) do |user|
  json.extract! user, :name, :email, :address, :active
  json.url user_url(user, format: :json)
end

json.array!(@users) do |user|
  json.extract! user, :id, :email, :full_name, :display_name, :password, :is_admin
  json.url user_url(user, format: :json)
end

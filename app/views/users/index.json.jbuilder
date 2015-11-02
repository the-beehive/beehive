json.array!(@users) do |user|
  json.extract! user, :id, :name, :username, :email, :password, :street, :city, :state, :zip, :phone, :uid, :provider
  json.url user_url(user, format: :json)
end

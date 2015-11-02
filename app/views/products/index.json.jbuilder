json.array!(@products) do |product|
  json.extract! product, :id, :user_id_as_seller, :name, :description, :yardage, :fabric_type, :shipping, :price
  json.url product_url(product, format: :json)
end

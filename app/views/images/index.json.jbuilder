json.array!(@images) do |image|
  json.extract! image, :id, :product_id, :image_url
  json.url image_url(image, format: :json)
end

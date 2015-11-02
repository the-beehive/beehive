json.array!(@orders) do |order|
  json.extract! order, :id, :user_id_as_buyer, :total, :order_status
  json.url order_url(order, format: :json)
end

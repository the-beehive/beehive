json.array!(@order_items) do |order_item|
  json.extract! order_item, :id, :product_id, :order_id, :fabric_design, :order_item_status, :shipping, :price, :name
  json.url order_item_url(order_item, format: :json)
end

require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase

  test "must have quantity" do
    order_item = OrderItem.new(quantity: 1)
    not_order_item = OrderItem.new()
    assert order_item.save
    refute not_order_item.save
  end

end

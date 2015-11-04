require 'test_helper'

class OrderTest < ActiveSupport::TestCase

  test "should have order items" do
    order = Order.new
    assert order.respond_to?(:order_items)
  end

  test "must have total" do
    order = Order.new(user_id: 1, total: 12)
    not_order = Order.new(user_id: 1)
    assert order.save
    refute not_order.save
  end

  test "must have user_id" do
    order = Order.new(user_id: 1, total: 12)
    not_order = Order.new(total: 12)
    assert order.save
    refute not_order.save
  end

end

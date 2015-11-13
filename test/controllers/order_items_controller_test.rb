require 'test_helper'

class OrderItemsControllerTest < ActionController::TestCase

  setup do
    @order_item = order_items(:one)
    @product = products(:one)
  end


  # test "should create order_item" do
  #   assert_difference('OrderItem.count') do
  #     post :create, order_item: { fabric_design: @order_item.fabric_design,
  #                                 name: @order_item.name, order_id: @order_item.order_id,
  #                                 order_item_status: @order_item.order_item_status,
  #                                 total_price: @order_item.total_price, product_id: @order_item.product_id,
  #                                 shipping: @order_item.shipping, quantity: @order_item.quantity,
  #                                 unit_price: @order_item.unit_price, fabric_design_url: @order_item.fabric_design_url }
  #   end

  #   assert_redirected_to order_item_path(assigns(:order_item))
  # end

  test "should show order_item" do
    get :show, id: @order_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_item
    assert_response :success
  end

  test "should update order_item" do
    patch :update, id: @order_item, order_item: { fabric_design: @order_item.fabric_design, name: @order_item.name, order_id: @order_item.order_id, order_item_status: @order_item.order_item_status, total_price: @order_item.total_price, product_id: @order_item.product_id, shipping: @order_item.shipping }
    assert_redirected_to carts_path
  end

  test "should destroy order_item" do
    assert_difference('OrderItem.count', -1) do
      delete :destroy, id: @order_item
    end

    assert_redirected_to carts_path
  end
end

class CartsController < ApplicationController
  # Before any action on the cart, authenticate the user.
  before_action :authenticate_user, only: [:create, :destroy]
  # Before any action, collect order info in @order
  before_action :set_order

  def index
    @order.total = 0
    @order.order_items.each do |i|
      i.total_price = (i.quantity * i.unit_price) + i.shipping
      @order.total += i.total_price
    end
    @order.save
  end

  def create
    # Find the product to be added to the cart by the ID supplied from the previous view.
    @product = Product.find_by_id(params[:id])
    # Create an order item based on the product found above.
    @order_item = OrderItem.create(
        product_id: @product.id,
        order_id: @order.id,
        fabric_design: params[:design],
        fabric_design_url: params[:source],
        shipping: @product.shipping,
        name: @product.name,
        unit_price: @product.price,
        quantity: 1)
    # Calculate the total_price field.
    @order_item.total_price = @order_item.quantity * @order_item.unit_price
    # Save that item!
    @order_item.save
    # Now show me the cart again.
    redirect_to carts_path
  end

  def destroy
    # Time to empty the current cart.  Blow up those items!
    @order.order_items.each do |o|
      # One at a time, nice and slow.
      o.destroy
    end
    # Whoops, get rid of that cart session.  (Wait.. we don't actually need it anyway.)
    session[:cart] = nil
    # Now show me the cart again.
    redirect_to carts_path
  end

  def checkout
  end

private

  def authenticate_user
    if current_user.nil?
      redirect_to sign_in_path, notice: 'You must be signed in to edit your cart.'
    end
  end

  def set_order
    @order = Order.find(session[:order_id])
  end

end

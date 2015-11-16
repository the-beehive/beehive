class CartsController < ApplicationController
  before_action :authenticate_user, only: [:create, :destroy]
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
    @product = Product.find_by_id(params[:id])
    @order_item = OrderItem.create(
        product_id: @product.id,
        order_id: @order.id,
        fabric_design: params[:design],
        fabric_design_url: params[:source],
        shipping: @product.shipping,
        name: @product.name,
        unit_price: @product.price,
        quantity: 1)

    @order_item.total_price = @order_item.quantity * @order_item.unit_price
    @order_item.save

    redirect_to carts_path
  end

  def update
    @order.order_items.each do |o|
      o.update
    end
    redirect_to carts_path
  end

  def destroy
    @order.order_items.each do |o|
      o.destroy
    end

    session[:cart] = nil
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

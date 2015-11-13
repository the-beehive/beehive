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
    # id = params[:id]
    # design = params[:design]
    # source = params[:source]
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
    # # The following allows for passing the fabric design selection to order items.
    # # If cart is already created, use existing cart to create a new one.  Else, create a new cart and add item in.
    # session[:cart] ||= {}
    # @cart = session[:cart]
    #
    # # If a product has already been added to cart, increment the quantity value.  Else, set value to one.
    # @cart[id] ||= {}
    # # @cart[id][:quantity] ||= 0
    # # @cart[id][:quantity] += 1
    # @cart[id][:design] = design
    # @cart[id][:source] = source

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

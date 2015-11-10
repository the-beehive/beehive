class CartController < ApplicationController

  def index
    # If cart exists, pass it to the page.  Otherwise, create a new empty cart.
    if session[:cart]
      @cart = session[:cart]
    else
      @cart = {}
    end
    @product = Product.new
  end

  def create
    id = params[:id]

    # If cart is already created, use existing cart to create a new one.  Else, create a new cart and add item in.
    if session[:cart] then
      @cart = session[:cart]
    else
      session[:cart] = {}
      @cart = session[:cart]
    end

    # If a product has already been added to cart, increment the value.  Else, set value to one.
    if @cart[id] then
      @cart[id] = @cart[id] + 1
    else
      @cart[id] = 1
    end
    redirect_to cart_path
  end

  def edit
  end

  def destroy
    session[:cart] = nil
    redirect_to cart_path
  end

end

class CartsController < ApplicationController
  before_action :authenticate_user, only: [:create, :destroy]

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
    session[:cart] ||= {}
    @cart = session[:cart]

    # If a product has already been added to cart, increment the value.  Else, set value to one.
    @cart[id] ||= 0
    @cart[id] += 1

    redirect_to carts_path
  end

  def destroy
    session[:cart] = nil
    redirect_to carts_path
  end

private

  def authenticate_user
    if current_user.nil?
      redirect_to sign_in_path, notice: 'You must be signed in to edit your cart.'
    end
  end

end

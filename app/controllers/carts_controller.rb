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
    # OrderMailer.buyer_confirmation(current_user).deliver_now
    # @cart.each do |k,v|
    #   OrderMailer.seller_confirmation(Product.find(k)).deliver_now
    # end
    @total = 0
    @cart.each do |id, stuff|
      product = Product.find_by_id(id)
      stuff.each do | thing, value |
        if thing == "quantity"
          @total += value * product.price
        end
      end
    end
    flash[:notice] = @total.to_s.to_i
  end

  def create
    id = params[:id]
    design = params[:design]
    source = params[:source]

    # If cart is already created, use existing cart to create a new one.  Else, create a new cart and add item in.
    session[:cart] ||= {}
    @cart = session[:cart]

    # If a product has already been added to cart, increment the quantity value.  Else, set value to one.
    @cart[id] ||= {}
    @cart[id][:quantity] ||= 0
    @cart[id][:quantity] += 1
    @cart[id][:design] = design
    @cart[id][:source] = source

    redirect_to carts_path
  end

<<<<<<< HEAD
  def edit
    @product = Product.new
  end

=======
>>>>>>> 6ec3c6a8d70a2e4269e99d1e4bf7b7e4e64452e9
  def destroy
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

end

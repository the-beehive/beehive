class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    @order = Order.find(session[:order_id])
    @amount = (@order.total * 100).to_i

    @order.completed!
    @new_order = Order.create!(user_id: session[:user_id])
    session[:order_id] = @new_order.id

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path

    # @order.completed!
    # @new_order = Order.create!(user_id: session[:user_id])
    # session[:order_id] = @new_order.id
  end
end

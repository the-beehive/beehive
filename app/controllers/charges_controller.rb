class ChargesController < ApplicationController

  def new
  end

  def create
    # Find current order to finalize
    @order = Order.find(session[:order_id])
    # Convert total to Amount in cents for Stripe processing
    @amount = (@order.total * 100).to_i

    # Display printable order summary in the view.
    # It'll basically look like the cart, but without any of the options available.

    # Set order to completed
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
  end

  # OrderMailer.buyer_confirmation(current_user).deliver_now
  # @cart.each do |k,v|
  #   OrderMailer.seller_confirmation(Product.find(k)).deliver_now
  # end
end

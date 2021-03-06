class SessionsController < ApplicationController

  def create
    #render :json => request.env['omniauth.auth'].to_json
    #render :json => request.env['omniauth.auth']["info"]["name"].to_json
    if request.post?
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        @order = user.get_incomplete_order
        session[:order_id] = @order.id
        redirect_to user_path(user), notice: "You successfully signed in."
      end
    elsif user = User.sign_in_from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
      @order = user.get_incomplete_order
      session[:order_id] = @order.id
      redirect_to root_url, notice: "Signed in!"
    else
      flash.now[:notice] = 'Invalid email/password combination'
      render root_path
    end
  end


  def new
  end

  def destroy
    session[:user_id] = nil
    session[:omniauth] = nil
    @current_user = nil
    redirect_to root_url
  end
end

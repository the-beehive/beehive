class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :personal, :social, :checkout

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.update(user_params)
    #@user.attributes = params[:user]
    render_wizard @user
  end
end

private

  def redirect_to_finish_wizard
    redirect_to carts_checkout_url, notice: "Thank you!"
  end

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :street, :city, :state, :zip, :phone, :uid, :provider, :uploaded_file)
  end

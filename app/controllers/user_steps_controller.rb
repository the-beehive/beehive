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

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :street, :city, :state, :zip, :phone, :uid, :provider, :uploaded_file)
  end

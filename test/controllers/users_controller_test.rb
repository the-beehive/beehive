require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  setup do
    @user = users(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  # test "should create user" do
  #   assert_difference('User.count') do
  #
  #     post :create, user: { city: @user.city, email: @user.email, name: @user.name, phone: @user.phone, provider: @user.provider, state: @user.state, street: @user.street, uid: @user.uid, username: @user.username, zip: @user.zip }
  #   end
  #
  #   assert_redirected_to user_path(assigns(:user))
  # end


  # test "should destroy user" do
  #   assert_difference('User.count', -1) do
  #     delete :destroy, id: @user
  #   end
  #
  #   assert_redirected_to users_path
  # end
end

# Those passwords being passed in both work, even though they are crazy confusing.

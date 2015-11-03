require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest

  setup do
    @product = products(:one)
  end

  test "the truth" do
    assert true
  end
  # Success! Yay, we're done!  No not really, but wouldn't that be nice?

  test "user can see products index" do
    get root_path
    assert_response :success
    assert response.body.match("Listing Products")
  end

  test "user can see individual product from index" do
    get root_path
    assert_select "a", :href => "#{product_path(@product.id)}"

    get product_path(@product.id)
    assert response.body.match("Small Ottoman")
  end

  test "user can see their own profile" do
    get user_path(User.first.id)
    assert_response :success
  end

  test "user can reach edit profile page" do
    get user_path(User.first.id)
    assert_response :success
  end

  test "user can reach create new product page" do
    get products_path
    assert_response :success
  end

  test "user can reach edit product page" do
    get edit_product_path(Product.first.id)
    assert_response :success
  end

  # test "user can create account" do
  #   Iteration 2
  # end

  # test "user can add item to cart" do
  #   Iteration 2.
  # end

  # test "user can search for a design" do
  #   Stretch
  # end

end

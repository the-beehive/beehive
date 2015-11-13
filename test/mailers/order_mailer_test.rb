require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  setup do
    @current_user = users(:one)
    @seller = users(:two)
  end

  test "buyer_confirmation" do
    mail = OrderMailer.buyer_confirmation(@current_user)
    assert_equal "Purchase Confirmation", mail.subject
    assert_equal ["MyString"], mail.to
    assert_equal ["Beehive"], mail.from
    assert_match "Beehive", mail.body.encoded
  end

  # test "seller_confirmation" do
  #   mail = OrderMailer.seller_confirmation(@seller)
  #   assert_equal "Seller confirmation", mail.subject
  #   assert_equal ["to@example.org"], mail.to
  #   assert_equal ["from@example.com"], mail.from
  #   assert_match "Hi", mail.body.encoded
  # end

end

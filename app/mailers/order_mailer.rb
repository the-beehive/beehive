class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.buyer_confirmation.subject
  #
  def buyer_confirmation(current_user)
    @buyer = current_user
    mail(to: @buyer.email, subject: "Purchase Confirmation", from: "Beehive")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.seller_confirmation.subject
  #
  def seller_confirmation(product)
    @seller = product.user
    mail(to: @seller.email, subject: "Sale Confirmation", from: "Beehive")
  end


end

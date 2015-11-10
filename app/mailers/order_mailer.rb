class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.buyer_confirmation.subject
  #
  def buyer_confirmation
    @user = "Ashley"

    mail to: "amason@spoonflower.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.seller_confirmation.subject
  #
  def seller_confirmation
    @user = "Ashley"

    mail to: "amason@spoonflower.com"
  end
end

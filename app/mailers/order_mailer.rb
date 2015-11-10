class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.buyer_confirmation.subject
  #
  def buyer_confirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.seller_confirmation.subject
  #
  def seller_confirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

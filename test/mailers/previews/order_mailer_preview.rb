# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/buyer_confirmation
  def buyer_confirmation
    OrderMailer.buyer_confirmation
  end

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/seller_confirmation
  def seller_confirmation
    OrderMailer.seller_confirmation
  end

end

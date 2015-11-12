class User < ActiveRecord::Base
  has_attached_file :uploaded_file
  validates_attachment_content_type :uploaded_file, :content_type => /\Aimage\/.*/
  has_secure_password
  has_many :products
  has_many :orders
  validates :name, presence: true


  def self.sign_in_from_omniauth(auth)
   find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)
  end

  def self.create_user_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.password = SecureRandom.hex(9)
      user.save
    end
  end

  def own_products
    @product.user_id = user.id
  end

  def get_incomplete_order
    self.orders.where(order_status: 1).last || self.orders.create!
  end

end

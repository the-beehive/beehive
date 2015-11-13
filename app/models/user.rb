class User < ActiveRecord::Base
  attr_accessor :form_step
  has_attached_file :uploaded_file
  validates_attachment_content_type :uploaded_file, :content_type => /\Aimage\/.*/
  has_secure_password
  has_many :products
  has_many :orders
  #validates :name, presence: true

  with_options :if => -> { required_for_step?(:personal) } do |step|
    step.validates :name, presence: true
    step.validates :street, presence: true
    step.validates :city, presence: true
    step.validates :state, presence: true
    step.validates :zip, presence: true
  end

  # with_options :if => -> { required_for_step?(:social) } do |step|
  #   step.validates :email, presence: true
  #   step.validates :password_digest, presence: true
  # end

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

  private

  def required_for_step?(step)
    form_step.nil? ||
    form_steps.index(step.to_s) <= form_steps.index(form_step)
  end
end

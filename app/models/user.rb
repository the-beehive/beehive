class User < ActiveRecord::Base
  has_secure_password

  has_many :products

  validates :name, presence: true
  # validates :username, presence: true

  def self.sign_in_from_omniauth(auth)
   find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)
  end

  def self.create_user_from_omniauth(auth)
  create! do |user|
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["name"]
  end
  end
end

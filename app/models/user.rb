class User < ActiveRecord::Base
  has_secure_password

  has_many :products

  validates :name, presence: true
  validates :username, presence: true
  validates :password_digest, presence: true
  
end

class Product < ActiveRecord::Base
  has_many :images
  belongs_to :user

  validates :name, presence: true
  validates :yardage, presence: true
  validates :fabric_type, presence: true
  validates :shipping, presence: true
  validates :price, presence: true
end

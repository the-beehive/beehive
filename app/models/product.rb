class Product < ActiveRecord::Base
  has_many :images
  belongs_to :user
  has_many :order_items

  validates :name, presence: true
  validates :yardage, presence: true
  validates :fabric_type, presence: true
  validates :shipping, presence: true
  validates :price, presence: true
  
  default_scope { where(active: true) }
end

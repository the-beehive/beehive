class OrderItem < ActiveRecord::Base

  belongs_to :order
  has_one :product

  validates :fabric_design, presence: true
end

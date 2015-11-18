class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  enum order_item_status: [ :cancelled, :in_progress, :completed, :invoiced ]

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  
end

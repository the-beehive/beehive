class Order < ActiveRecord::Base
  has_many :order_items
  belongs_to :user

  validates :user_id, presence: true

  # Cancelled - duh
  # In Progress - Customer is still shopping
  # Completed - Customer has submitted order
  # Invoiced - Seller has finished item and invoiced the customer

  enum order_status: [ :cancelled, :in_progress, :completed, :invoiced ]

  def totals
    self.total = 0
    self.order_items.each do |i|
      i.total_price = (i.quantity * i.unit_price) + i.shipping
      self.total += i.total_price
    end
  end

end

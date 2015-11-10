class Order < ActiveRecord::Base
  has_many :order_items
  belongs_to :user

  before_create :set_order_status
  before_save :update_subtotal

  validates :user_id, presence: true
  validates :total, presence: true

  enum order_status: [ :cancelled, :in_progress, :completed, :invoiced ]

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end
private
  def set_order_status
    self.in_progress!
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end

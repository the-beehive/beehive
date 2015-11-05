class Order < ActiveRecord::Base

  has_many :order_items
  belongs_to :user

  before_create :set_order_status
  before_save :update_subtotal

  validates :user_id, presence: true
  validates :total, presence: true

  enum order_status: [ :cancelled, :in_progress, :completed, :invoiced ]

  def total
    order_items.collect { |oi| oi.valid? ? oi.price : 0 }.sum
  end

  private
    def set_order_status
      self.order_status = 1
    end

    def update_subtotal
      self[:total] = total
    end
end

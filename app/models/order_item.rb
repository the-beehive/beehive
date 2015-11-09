class OrderItem < ActiveRecord::Base

  belongs_to :product
  belongs_to :order

  validates :fabric_design, presence: true

  enum order_item_status: [ :cancelled, :in_progress, :completed, :invoiced ]

  validate :product_present
  validate :order_present

  before_save :finalize

  def price
    if persisted?
      self[:price]
    else
      product.price
    end
  end

  private
    def product_present
      if product.nil?
        errors.add(:product, "is not valid or is not active.")
      end
    end

    def order_present
      if order.nil?
        errors.add(:order, "is not a valid order.")
      end
    end

    def finalize
      self[:price] = price
    end
end

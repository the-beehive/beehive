class ChangeOrderItems < ActiveRecord::Migration
  def change
    remove_column :order_items, :price
    add_column :order_items, :unit_price, :decimal, precision: 12, scale: 3
    add_column :order_items, :quantity, :integer
    add_column :order_items, :total_price, :decimal, precision: 12, scale: 3
  end
end

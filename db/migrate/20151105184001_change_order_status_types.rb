class ChangeOrderStatusTypes < ActiveRecord::Migration
  def self.up
    change_column :orders, :order_status, 'integer USING CAST(order_status AS integer)', default: 1
    change_column :order_items, :order_item_status, 'integer USING CAST(order_status AS integer)', default: 1
  end

  def self.down
    change_column :orders, :order_status, :string
    change_column :order_items, :order_item_status, :string
  end
end

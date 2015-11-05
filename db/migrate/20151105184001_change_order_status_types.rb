class ChangeOrderStatusTypes < ActiveRecord::Migration
  def change
    change_column :orders, :order_status, :integer, default: 1
    change_column :order_items, :order_item_status, :integer, default: 1
  end
end

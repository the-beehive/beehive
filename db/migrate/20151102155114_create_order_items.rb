class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :fabric_design
      t.string :order_item_status
      t.decimal :shipping
      t.decimal :price
      t.string :name

      t.timestamps null: false
    end
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id_as_buyer
      t.decimal :total
      t.string :order_status

      t.timestamps null: false
    end
  end
end

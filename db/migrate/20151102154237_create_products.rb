class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :user_id_as_seller
      t.string :name
      t.text :description
      t.integer :yardage
      t.string :fabric_type
      t.decimal :shipping
      t.decimal :price

      t.timestamps null: false
    end
  end
end

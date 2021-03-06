class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.integer :uid
      t.string :provider

      t.timestamps null: false
    end
  end
end

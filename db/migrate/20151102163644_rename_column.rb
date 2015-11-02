class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :users, :password, :password_digest
    rename_column :orders, :user_id_as_buyer, :user_id
    rename_column :products, :user_id_as_seller, :user_id
  end
end

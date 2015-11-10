class AddDesignToProducts < ActiveRecord::Migration
  def change
    add_column :products, :design, :integer
  end
end

class AddDesignUrl < ActiveRecord::Migration
  def change
    add_column :order_items, :fabric_design_url, :string
  end
end

class FixingStuff < ActiveRecord::Migration
  def change
    rename_column :products, :price_id, :price
    rename_column :products, :unit_id, :unit
    remove_column :order_details, :extended_price, :float
  end
end

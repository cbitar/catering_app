class MoreFixingStuff < ActiveRecord::Migration
  def change
    remove_column :products, :unit, :integer
    remove_column :order_details, :quantity, :float
    add_column :order_details, :unit, :integer
  end
end

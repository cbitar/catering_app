class MoreFixingStuff < ActiveRecord::Migration
  def change
    change_column :products, :unit, :string
    change_column :order_details, :quantity, :integer
    remove_column :orders, :order_date
  end
end

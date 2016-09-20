class RemoveColumnsCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :date_ordered, :date
    remove_column :customers, :date_needed, :date
    remove_column :customers, :amount_spending, :integer
  end
end

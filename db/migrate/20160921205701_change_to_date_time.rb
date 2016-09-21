class ChangeToDateTime < ActiveRecord::Migration
  def change
    change_column :orders, :delivery_date, :datetime
  end
end

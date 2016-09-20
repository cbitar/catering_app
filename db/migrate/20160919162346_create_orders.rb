class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :order_date
      t.date :delivery_date
      t.string :location

      t.timestamps null: false
    end
  end
end

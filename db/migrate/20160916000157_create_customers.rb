class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.date :date_ordered
      t.date :date_needed
      t.float :amount_spending
      t.string :email
      t.integer :phone_number
      t.string :password_digest

      t.timestamps null: false
    end
  end
end

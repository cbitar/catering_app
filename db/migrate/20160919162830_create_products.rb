class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price_per_oz
      t.integer :people_fed
      t.integer :category_id
      t.text :description

      t.timestamps null: false
    end
  end
end

class AddUnitToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :unit, index: true
    add_reference :products, :price, index: true
  end
end

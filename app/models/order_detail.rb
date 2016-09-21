class OrderDetail < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  def extended_price
    quantity * product.price
  end

  def people_fed
    quantity * product.people_fed
   end
end

class OrderDetail < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  def extended_price
    unit * product.price
  end

  def people_fed
    unit * product.people_fed
   end
end

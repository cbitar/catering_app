class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_details

  def total
    sum = 0
    order_details.each do |od|
      sum += od.extended_price
    end
    return sum
  end

  def total_people
    total = 0
    order_details.each do |od|
      total += od.people_fed
    end
    return total
  end  # validates :location, presence: true
end

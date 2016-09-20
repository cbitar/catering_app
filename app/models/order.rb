class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_details

  # validates :location, presence: true
end

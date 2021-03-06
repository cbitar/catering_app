class Customer < ActiveRecord::Base
  has_secure_password
  has_many :orders

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
end

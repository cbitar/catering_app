# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

OrderDetail.destroy_all
Order.destroy_all
Product.destroy_all

bb_ribs = Product.create({ price_per_oz: 0.90 , name: "Baby Back Ribs", people_fed: 2, category: meats})
pulled_pork = Product.create({ price_per_oz: 0.60 , name: "Pulled Pork", people_fed: 2, category: meats})
bq_chic = Product.create({ price_per_oz: 0.60 , name: "BBQ Chicken", people_fed: 2, category: meats})

o1 = Order.create({ order_date: Date.today , delivery_date: Date.new(2016, 9, 30) , location: 'Bellflower'})

od1 = OrderDetail.create({order: o1, product: bb_ribs, quantity: 15, extended_price: 12.95})

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' },

OrderDetail.destroy_all
Order.destroy_all
Product.destroy_all


bb_ribs = Product.create({
  price: 14.00,
  unit: "full-rack",
  name: "Baby Back Ribs",
  people_fed: 2,
  description: "slow smoked tender pork ribs",
})
pulled_pork = Product.create({
 price: 10.80,
 unit: "8 oz",
 name: "Pulled Pork",
 people_fed: 2,
 description: "juicy pulled pork smoked for 6 hours",
})
tritp = Product.create({
price: 11.60 ,
 unit: "8 oz",
 name: "Smoked Tri Tip",
 people_fed: 2,
 description: "prime smoked beef with an array of woods from around California",
})
smk_chic = Product.create({
price: 8.60 ,
 unit: "8 oz",
 name: "Smoked Chicken",
 people_fed: 2,
 description: "succulent smoked chicken done Califonia Style",
})
tbgr = Product.create({
price: 12.50 ,
 unit: '8 oz',
 name: "Grilled T-Bone Steak",
 people_fed: 1,
 description: "tender T-Bone steak grilled to perfection",
})
tbsmk = Product.create({
price: 12.50 ,
 unit: '8 oz',
 name: "Smoked T-Bone Steak",
 people_fed: 1,
 description: "perfectly smoked T-Bone steak Califonia Style",
})
nygr = Product.create({
price: 11.60 ,
 unit: "8 oz",
 name: "Grilled New York Steak",
 people_fed: 1,
 description: "tender grilled New York steak you won't regret",
})
nysmk = Product.create({
price: 11.60 ,
 unit: "8 oz",
 name: "Smoked New York Steak",
 people_fed: 1,
 description: "succulent smoked New York steak done Califonia Style",
})



o1 = Order.create({
 delivery_date: Date.new(2016,9,30) ,
 location: 'Bellflower'
})

od1 = OrderDetail.create({order: o1,
 product: bb_ribs,
 quantity: 15,
})


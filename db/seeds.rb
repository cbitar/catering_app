OrderDetail.destroy_all
Order.destroy_all
Product.destroy_all


bb_ribs = Product.create({
  price: 23.00,
  unit: "full-rack",
  name: "Baby Back Ribs",
  people_fed: 4,
  description: "slow smoked tender baby back pork ribs",
})
pulled_pork = Product.create({
 price: 22.00,
 unit: "1 lb",
 name: "Pulled Pork",
 people_fed: 4,
 description: "juicy pulled pork smoked for 12 hours",
})
tritp = Product.create({
price: 23.00,
 unit: "1 lb",
 name: "Smoked Tri Tip",
 people_fed: 4,
 description: "prime smoked Angus tri-tip",
})
smk_chic = Product.create({
price: 10.00,
 unit: "1 leg quarter",
 name: "Smoked Chicken",
 people_fed: 1,
 description: "succulent smoked chicken done Califonia Style",
})
brskt = Product.create({
price: 23.00,
 unit: '1 lb',
 name: "Smoked Brisket",
 people_fed: 4,
 description: "black angus beef smoked for 12 hours",
})
rbtips = Product.create({
price: 9.00,
 unit: "full-rack",
 name: "Smoked New York Steak",
 people_fed: 3,
 description: "succulent smoked New York steak done Califonia Style",
})
smkbf = Product.create({
price: 8.00,
 unit: "1 link",
 name: "Smoked Beef Links",
 people_fed: 1,
 description: "premium smoked beef link",
})
grcatfish = Product.create({
price: 14.00,
 unit: "1 fish",
 name: "Grilled Catfish",
 people_fed: 2,
 description: "catfish grilled to perfection",
})
frcatfish = Product.create({
price: 14.00,
 unit: "full-rack",
 name: "Fried Catfish",
 people_fed: 2,
 description: "best catfish this side of the Mississippi",
})
grfilet = Product.create({
price: 14.00,
 unit: "1 fish",
 name: "Grilled Filet of Sole",
 people_fed: 1,
 description: "grilled filet of sole",
})
frfilet= Product.create({
price: 14.00,
 unit: "1 fish",
 name: "Fried Filet of Sole",
 people_fed: 1,
 description: "fried filet of sole",
})
grshrmp= Product.create({
price: 12.00,
 unit: "1 lb",
 name: "Grilled Shrimp",
 people_fed: 2,
 description: "grilled shrimp that you'll come back for",
})
frshrmp= Product.create({
price: 12.00,
 unit: "1 lb",
 name: "Fried Shrimp",
 people_fed: 2,
 description: "succulent fried shrimp",
})
blkeydps = Product.create({
price: 40.00,
 unit: "half-pan",
 name: "Black-Eyed Peas",
 people_fed: 20,
 description: "black-eyed peas cooked to perfection",
})
spyblkeydps = Product.create({
price: 40.00,
 unit: "half-pan",
 name: "Spicy Black-Eyed Peas",
 people_fed: 20,
 description: "black-eyed peas cooked to perfection with a little heat",
})
colgreens = Product.create({
price: 40.00,
 unit: "half-pan",
 name: "Collard Greens",
 people_fed: 20,
 description: "southern style collard greens",
})
spycolgreens = Product.create({
price: 40.00,
 unit: "half-pan",
 name: "Spicy Collard Greens",
 people_fed: 20,
 description: "collard greens cooked to perfection with a little heat",
})
greenbns = Product.create({
price: 40.00,
 unit: "half-pan",
 name: "Green Beans",
 people_fed: 20,
 description: "tender green beans cooked with potatoes and smoked chicken",
})
bakedbns = Product.create({
price: 40.00,
 unit: "half-pan",
 name: "BBQ Baked Beans",
 people_fed: 20,
 description: "bbq baked beans, always a crowd favorite",
})
grlcmashpot = Product.create({
price: 40.00,
 unit: "half-pan",
 name: "Garlic Mashed Potatoes",
 people_fed: 20,
 description: "fluffy mashed potatoes cooked with garlic",
})
halfmac = Product.create({
price: 55.00 ,
 unit: "half-pan",
 name: "Mac & Cheese",
 people_fed: 15,
 description: "one of our favorite vegetarian options, but definitley not vegan",
})
fullmac = Product.create({
price: 120.00 ,
 unit: "full-pan",
 name: "Mac & Cheese",
 people_fed: 35,
 description: "full pan of mac and cheese, great for feeding many people.",
})
colslaw = Product.create({
price: 40.00,
 unit: "large bowl",
 name: "Cole Slaw",
 people_fed: 20,
 description: "best cole slaw you'll ever have",
})
housesalad = Product.create({
price: 40.00,
 unit: "large bowl",
 name: "House Salad",
 people_fed: 20,
 description: "our special house salad done with Romaine lettuce",
})
sprngsalad = Product.create({
price: 40.00,
 unit: "large bowl",
 name: "Spring Salad",
 people_fed: 20,
 description: "freshing spring salad with assortment of greens",
})
pchcobler = Product.create({
price: 50.00,
 unit: "half-pan",
 name: "Peach Cobbler",
 people_fed: 20,
 description: "finish off with something sweet, try our peach cobbler",
})
bnanapud = Product.create({
price: 50.00,
 unit: "half-pan",
 name: "Banana Pudding",
 people_fed: 20,
 description: "don't leave without trying our famous Hambone's banana pudding with vanilla wafers",
})

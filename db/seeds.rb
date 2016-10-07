# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ingredient1 = Ingredient.create( { name: "Milk", amount: 3, expire: Date.strptime("15-10-2016", "%d-%m-%Y"), image: ""})
ingredient2 = Ingredient.create( { name: "Cheese", amount: 4, expire: Date.strptime("24-10-2016", "%d-%m-%Y"), image: ""})
ingredient3 = Ingredient.create( { name: "Tomatos", amount: 5, expire: Date.strptime("05-09-2016", "%d-%m-%Y"), image: ""})
ingredient4 = Ingredient.create( { name: "Pepper", amount: 5, expire: Date.strptime("19-10-2016", "%d-%m-%Y"), image: ""})
category1 = Category.create( { name: "Dairy", image: ""} )
category2 = Category.create( { name: "Fruits", image: ""} )
category3 = Category.create( { name: "Veggies", image: ""} )
category4 = Category.create( { name: "Spices", image: ""} )
category5 = Category.create( { name: "Sweets", image: ""} )
location1 = Location.create( {name: "Basement" })
location2 = Location.create( {name: "Pantry" })
location3 = Location.create( {name: "Box 1" })


category1.ingredients << [ingredient4]
category2.ingredients << [ingredient3]
category3.ingredients << [ingredient2]
category4.ingredients << [ingredient1]
category4.ingredients << [ingredient3]

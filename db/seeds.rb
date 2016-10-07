# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ingredient1 = Ingredient.create( { name: "Milk", category: 1, location: 1, amount: 3, expire: Date.strptime("15-10-2016", "%d-%m-%Y"), image: ""})
ingredient1 = Ingredient.create( { name: "Cheese", category: 1, location: 1, amount: 4, expire: Date.strptime("24-10-2016", "%d-%m-%Y"), image: ""})
ingredient1 = Ingredient.create( { name: "Tomatos", category: 2, location: 2, amount: 5, expire: Date.strptime("05-09-2016", "%d-%m-%Y"), image: ""})
ingredient1 = Ingredient.create( { name: "Pepper", category: 2, location: 3, amount: 5, expire: Date.strptime("19-10-2016", "%d-%m-%Y"), image: ""})

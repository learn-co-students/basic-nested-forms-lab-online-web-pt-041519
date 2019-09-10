# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

   ingredients = Ingredient.create([{name: "egg", quantity: 2}, {name: "onion", quantity: 1}, {name: "pepper", quantity: 1}])


   recipes = Recipe.create([{title: "omelette"}])
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "DESTROY..."
Cocktail.destroy_all
Ingredient.destroy_all

puts "Creating Cocktails"

Cocktail.create(name: "Coco Bango")
Cocktail.create(name: "Millenium")
Cocktail.create(name: "Frangipane")

puts "Creating Ingredients..."

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "Light rum")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Strawberry schnapps")
Ingredient.create(name: "Peach nectar")
Ingredient.create(name: "Grape juice")
Ingredient.create(name: "Cranberry juice")
Ingredient.create(name: "Orange")
Ingredient.create(name: "Peach Vodka")
Ingredient.create(name: "Chocolate")

puts "Finished !"
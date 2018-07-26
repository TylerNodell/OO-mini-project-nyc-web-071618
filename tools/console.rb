require_relative '../config/environment.rb'

damon = User.new("Damon")
shaun = User.new("shaun")
kevin = User.new("kevin")
larry = User.new("larry")

shrimp = Ingredient.new("shrimp")
nuts = Ingredient.new("nuts")
chocolate = Ingredient.new("chocolate")
air = Ingredient.new("air")
death = Ingredient.new("death")

shrimpallergy = Allergen.new(shrimp, damon)
nutsallergy = Allergen.new(nuts, damon)
twonutsallergy = Allergen.new(nuts, damon)
chocolateallergy = Allergen.new(chocolate, damon)
airallergy = Allergen.new(death, damon)
deathallergy = Allergen.new(death, damon)
realdeathallergy = Allergen.new(death, damon)

scampi = Recipes.new("scampi")

scampicard = RecipeCard.new("27nov", 4, scampi, damon)
scampicard = RecipeCard.new("27nov", 5, scampi, damon)
scampicard = RecipeCard.new("27nov", 3, scampi, damon)
scampicard = RecipeCard.new("27nov", 5, scampi, damon)

scampiingredients = RecipeIngredient.new(scampi, shrimp)

binding.pry
0
class Recipes
  attr_accessor :ingredients, :allergens

  @@all = []

  def initialize(recipe)
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    count = 0
    index = 0
    @@all.each do |recipe|
      recipe.users.count > count
      count = recipe.users.count
      index = @@all.index(recipe)
    end
    @@all[index]
  end

  def users
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def ingredients
    RecipeIngredients.all.select do |recipe_ingredient|
      reciple_ingredient.recipe == self
    end
  end

  def allergens
    ingredients.select do |ingredient|
      Alergen.find {|allergen| allergen.ingredient == ingredient}
    end
  end

  def add_ingredients(ingredientarray)
    ingredientarray.each do |i|
      ingredients << i
    end
  end
end
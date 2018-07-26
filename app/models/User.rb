class User
  
  attr_accessor :user
  
  @@all = []
  
  def initialize(user)
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select do |recipe|
      recipe.user == self
    end
  end

  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, recipe, self)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    Allergens.all.select do |allergen|
      allergen.user == self
    end
  end

  def top_three_recipes
    recipes.sort_by { |rate| rate.rating }.reverse[0..2]
  end

  def most_recent_recipe
    @@all.last
  end
end

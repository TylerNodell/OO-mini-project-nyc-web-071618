class Ingredient
  attr_accessor :ingredient, :allergens

  @@all = []

  def initialize(ingredient)
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergy
    count = 0
    index = 0
    @@all.each do |ingredient|
      ingredient.allergens.count > count
      count = ingredient.allergens.count
      index = @@all.index(ingredient)
    end
    @@all[index]
  end

  def allergens
    # binding.pry
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end
end
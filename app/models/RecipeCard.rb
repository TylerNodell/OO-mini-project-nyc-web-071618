class RecipeCard
  attr_accessor :date, :rating, :recipe, :user

@@all = []

  def initialize(date, rating, recipe, user)
    @date = date
    @rating = rating
    @recipe = recipe
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end
end
class CookBook

  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    ingredients = []
    @recipes.each do |recipe|
      recipe.ingredients_required.each do |ingredient|
        ingredients << ingredient[0].name
      end
    end
    ingredients.uniq
  end

  def highest_calorie_meal
    @recipes.sort {|recipe| recipe.total_calories}.first
  end

end

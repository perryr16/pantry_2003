require 'date'
class CookBook

  attr_reader :recipes
  def initialize
    @recipes = []
    date
  end

  def date
    @date = Date.today.strftime("%m-%d-%Y")
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

  def ingredient_details(recipe)
    ingredient_details = []

    recipe.ingredients_required.each do |ingredient, count|
      one_ingredient = {}
      one_ingredient[:ingredient] = ingredient.name
      one_ingredient[:amount] = "#{count} #{ingredient.unit}"
      one_ingredient[:total_calories] = ingredient.calories * count
      ingredient_details << one_ingredient
    end
    ingredient_details = ingredient_details.sort_by do |details|
      details[:total_calories]
    end.reverse
    ingredient_details.map { |details| details.delete(:total_calories)}
    ingredient_details
  end


  def summary
    summary = Hash.new { |hash, key| hash[key] = {:name => "", :details => {}} }
    @recipes.each do |recipe|

      summary[recipe.name][:name] = recipe.name
      summary[recipe.name][:details][:ingredients] = ingredient_details(recipe)
      summary[recipe.name][:details][:total_calories] = recipe.total_calories

    end
    summary.values
  end

end

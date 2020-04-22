class Pantry

  attr_reader :stock
  def initialize
    @stock = Hash.new { |hash, key| hash[key] =  0 }
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, count)
    @stock[ingredient] += count
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients_required.each do |reqd_ingredient|
      return false if @stock[reqd_ingredient[0]] < reqd_ingredient[1]
    end
    return true
  end

end

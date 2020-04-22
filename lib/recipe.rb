class Recipe

  attr_reader :name, :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new { |hash, key| hash[key] = 0 }
  end

  def add_ingredient(ingredient, count)
    @ingredients_required[ingredient] += count
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    @ingredients_required.sum {|ingredient, count| ingredient.calories * count}
  end

end

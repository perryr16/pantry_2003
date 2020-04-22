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

end

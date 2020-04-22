require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cook_book'

class CookBookTest < MiniTest::Test

  def test_it_exists
    cookbook = CookBook.new
    assert_instance_of CookBook, cookbook
  end

end

#recipe2 = Recipe.new("Cheese Burger")
#
#cookbook = CookBook.new
# # => #<CookBook:0x00007faae6a42228 @recipes=[]>
#
#cookbook.add_recipe(recipe1)
#
#cookbook.add_recipe(recipe2)
#
#cookbook.recipes
# # => [#<Recipe:0x00007faae69c9698...>, #<Recipe:0x00007faae692a110...>]

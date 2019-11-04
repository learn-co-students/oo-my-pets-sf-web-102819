require 'pry'
require_relative 'owner'
require_relative 'cat'
require_relative 'dog'

dog_1 = Dog.new("Fido", @owner)
dog_2 = Dog.new("Snuffles", @owner)
dog_3 = Dog.new("Charley", @owner)
fido = Dog.new("Fido", @owner)


# cat_1 = Cat.new("Garfield", @owner)
# cat_2 = Cat.new("Fido", @owner)
# cat_3 = Cat.new("Whiskers", @owner)
# cat = Cat.new("Muffin", @owner)
# tabby = Cat.new("Tabby", @owner)


# binding.pry

puts "animals r cool"
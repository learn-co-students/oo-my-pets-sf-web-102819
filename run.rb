require "pry"
require_relative "lib/owner"
require_relative "lib/dog"
require_relative "lib/cat"


victoria = Owner.new("Victoria")
sarah = Owner.new("Sarah")
tom = Owner.new("Tom")

cat_1 = Cat.new("Garfield", tom)
cat_2 = Cat.new("Fido", tom)
cat_3 = Cat.new("Whiskers", tom)
cat_4 = Cat.new("Patch", sarah)


dog_1 = Dog.new("Fido", victoria)
dog_2 = Dog.new("Snuffles", victoria)
dog_3 = Dog.new("Charley", victoria)
dog_4 = Dog.new("Rocko", sarah)



binding.pry

puts "OO Pets"
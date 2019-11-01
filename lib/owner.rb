require 'pry'
class Owner
  attr_accessor 
  attr_reader :name, :species

  @@all = [ ]
  @@count = 0

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
    @@count +=1
  end 

  def say_species
    p "I am a #{@species}."
  end

  def self.all
    @@all
  end 

  def self.count
    @@count
  end 

  def self.reset_all
    @@count = 0
  end

  def cats
    Cat.all.select { |cat| cat.owner == self }
  end 

  def dogs
    Dog.all.select do |dog| 
      dog.owner == self
    end
  end 

  def buy_cat(name)
    Cat.new(name, self, mood = "nervous")
  end 

  def buy_dog(name)
    Dog.new(name, self, mood = "nervous")
  end 

  def walk_dogs
    dogs.each do |dog|
      dog.mood="happy"
    end 
  end 

  def feed_cats
    cats.each do |cat|
      cat.mood="happy"
    end
  end 

  def sell_pets
    dogs.each do |dog|
      dog.mood="nervous"
      dog.owner=nil
    end

    cats.each do |cat|
      cat.mood="nervous"
      cat.owner=nil
    end
  end 

  def list_pets
    p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end
#binding.pry 
#puts "gaayyy"
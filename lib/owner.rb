require "pry"
class Owner
  attr_reader :name, :species, :mood

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.filter { |cat| cat.owner == self }
  end

  def dogs
    Dog.all.filter { |dog| dog.owner == self }
  end

  def buy_cat(name)
    new_cat = Cat.new(name, self)
  end

  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    Dog.all.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end

    Cat.all.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end
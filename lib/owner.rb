class Owner

  attr_reader :name, :species
  attr_accessor :mood

  @@all_owners = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all_owners << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.length
  end

  def self.reset_all
    @@all_owners.clear
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(new_cat)
    Cat.new(new_cat, self)
  end

  def buy_dog(new_dog)
    Dog.new(new_dog, self)
  end

  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy" 
    end
  end

  def feed_cats
    cats.each do |cat|
      cat.mood = "happy" 
    end
  end

  def sell_pets
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil 
    end
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil 
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end
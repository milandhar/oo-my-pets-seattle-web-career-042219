require 'pry'
class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  @pets = {}

  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all= []
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{@species}."
  end


  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, pet|
      pet.each do |animal|
        animal.mood = "nervous"
      end
      pet.clear
    end

  end

  def list_pets
    #binding.pry
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."

  end

end

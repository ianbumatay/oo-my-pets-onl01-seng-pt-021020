class Owner
  # code goes here
  @@all = []
  attr_reader :species, :name
  attr_accessor :cats

   def initialize(name,species = "human")
      @name = name
      @species = species
      @@all << self
      @cats = []
   end

   def say_species
      "I am a #{@species}."
   end

   def self.all
     @@all
   end

   def self.count
     @@all.size
   end

   def self.reset_all
     @@all.clear
   end

   def cats
      Cat.all.select {|cat| cat.owner == self}
   end

   def dogs
     Dog.all.select {|dog| dog.owner == self}
   end






end

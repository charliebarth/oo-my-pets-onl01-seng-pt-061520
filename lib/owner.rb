class Owner
  attr_accessor :cats, :dogs
  attr_reader :species, :name
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end
  
  def say_species
    "I am a #{self.species}."
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
  
  def self.buy_cat(name)
    Cat.new(name, self)
  end
    
  def self.buy_dog(name)
    Dog.new(name, self)
  end

end
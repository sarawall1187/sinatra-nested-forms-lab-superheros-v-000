class SuperHero 
  attr_accessor :name, :power, :bio
  @@all = []
  def intitialize(name, power, bio)
    @name = name
    @power = power
    @bio = bio 
    @@all << self 
  end

  def self.all 
    @@all 
  end

end
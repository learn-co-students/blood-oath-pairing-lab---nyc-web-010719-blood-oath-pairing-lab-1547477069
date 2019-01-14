class Cult

  attr_accessor :location, :founding_year, :slogan, :followers
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @followers = []
    @@all << self
  end

  def recruit_follower(follower)
    BloodOath.new(follower, self)
  end

  def population
    @followers.size
  end

  def self.find_by_name(name)
    @@all.find do | cult |
      cult.name == name
    end
  end

  def self.find_by_location(location)
    @@all.select do | cult |
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    @@all.select do | cult |
      cult.founding_year == year
    end
  end

end # end of Cult class

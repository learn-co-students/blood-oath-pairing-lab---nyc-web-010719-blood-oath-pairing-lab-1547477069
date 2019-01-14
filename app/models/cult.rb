require 'pry'

class Cult

  attr_accessor :name, :location, :founding_year, :slogan
  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan

    @@all << self
  end

  def followers
    self.blood_oath.map do |bo|
      bo.followers
       # binding.pry
    end
    # binding.pry
  end

  def recruit_follower(follower)
     # followers << follower
    BloodOath.new(self,follower)
    # binding.pry
  end

  def blood_oath
    BloodOath.all.select do |nh|
      nh.cults == self
      # binding.pry
    end
    # binding.pry
  end

  def cult_population
    followers.length
    # binding.pry
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |c|
      c.name == name
    end
    # binding.pry
  end

  def self.find_by_location(location)
    self.all.find do |c|
      c.location == location
    end
  end

  def self.find_by_founding_year(founding_year)
    self.all.find do |c|
      c.founding_year == founding_year
    end
  end
end

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

  def average_age
    followers.inject{ |sum, el| sum.age + el.age}.to_f
  end

  def my_followers_mottos
    followers.select do |m|
      puts m.life_motto
    end
  end

  def self.least_popular
    least = 0
    self.all.each do |l|
      if l.followers.length < least
        least = l.followers.length
      end
    end
  end

  def self.most_common_location
    counts = ""
    self.all.each do |locale|
      locale.to_s
    end
  end
end

class Cult

  attr_accessor :name, :location, :year, :slogan, :min_age

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |cult|
      cult.name == name
  end
end

  def self.find_by_location(location)
    @@all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    @@all.select do |cult|
      cult.year == year
    end
  end

  def self.least_popular
    container = nil
    specific_cult = ""
    @@all.each do |cult|
      if !container
        container = cult.cult_population
        specific_cult = cult
      elsif cult.cult_population < container
        container = cult.cult_population
        specific_cult = cult
      end
    end
    specific_cult
  end

  def self.most_common_location
    container = Hash.new(0)
    @@all.each do |cult|
      container[cult.location] += 1
    end
    container.keys.max
  end

  def initialize(name, location, year, slogan, min_age)
    @name = name
    @location = location
    @year = year
    @slogan = slogan
    @min_age = min_age

    @@all << self
  end

  #this will give us all the bloodoaths for this cult instance
  def bloodoaths
    BloodOath.all.select do |bo|
      bo.cult == self
    end
  end

  #list of all followers in this cult instance
  def followers
    bloodoaths.map do |bo|
      bo.follower
    end
  end


  def recruit_follower(follower)
    if follower.age > @min_age
      BloodOath.new("_#{Date.today}_",follower, self)
    else
      "You are too young to join come back with a a fake ID"
    end
  end

  def cult_population
    followers.length
  end

  def average_age
    #add ages of all of the followers together
    add_ages = followers.inject(0) do |sum, follower|
      sum + follower.age
    end
    #divide by the number of followers
    add_ages / followers.length.to_f
  end

  def my_followers_mottos
    followers.each do |follower|
      puts follower.life_motto
    end
  end



end #end of cult class

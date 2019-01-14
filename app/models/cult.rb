class Cult

  attr_accessor :name, :location, :year, :slogan

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


  def initialize(name, location, year, slogan)
    @name = name
    @location = location
    @year = year
    @slogan = slogan

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
    BloodOath.new("_#{Date.today}_",follower, self)
  end

  def cult_population
    followers.length
  end


end #end of cult class

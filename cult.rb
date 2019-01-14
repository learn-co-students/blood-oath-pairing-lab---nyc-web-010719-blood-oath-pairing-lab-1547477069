class Cult

  attr_accessor :location, :founding_year, :slogan, :followers, :minimum_age
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

  def recruit_follower(follower, date)
    if follower.age < self.minimum_age
      print "Sorry U are too young to join."
    else
      BloodOath.new(follower, self, date)
    end
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

  ##advanced methods
  def average_age
    age_array = @followers.map do | follower |
      follower.age
    end
    sum = 0
    age_array.each do | a |
      sum+=a
    end
    sum / age_array.count.to_f
  end

  def my_followers_mottos
    @followers.map do | follower |
      follower.life_motto
    end
  end

  def self.least_popular
    popularity = @@all.sort_by { | cult | cult.population }
    popularity[0]
  end


  def self.most_common_location
    locations = @@all.map { | cult | cult.location }
    freq = locations.inject(Hash.new(0)) { |a, b| a[b] += 1; a }
    locations.max_by { | location | freq[location] }
    # taken from stack overflow...confused!! but works.
  end

end # end of Cult class

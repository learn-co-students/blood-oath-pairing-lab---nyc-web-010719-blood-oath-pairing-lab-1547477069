require 'pry'

class Cult

  attr_reader :name, :location, :founding_year, :slogan

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def blood_oath
    BloodOath.all.select do |blood_oath|
      blood_oath.cult == self
    end
  end

  def followers
    self.blood_oath.map do |b_o|
      b_o.follower
    end
  end

  def recruit_follower(follower)
    new_blood_oath = BloodOath.new(Time.now.strftime("%Y/%m/%d"), self, follower)
    self.followers
  end

  def cult_population
    self.followers.count
  end

  def self.find_by_name(cult_name)
    @@all.find {|cult| cult.name == cult_name}
  end

  def self.find_by_location(cult_location)
    @@all.find {|cult| cult.location == cult_location}
  end

  def self.find_by_founding_year(cult_founding_year)
    @@all.find {|cult| cult.founding_year == cult_founding_year}
  end

  def average_age
    age_arr = self.followers.map {|key| key.age}
    age_arr.inject{|sum, element| sum + element }.to_f / age_arr.length
  end

  def my_followers_mottos
    puts self.followers.map {|key| key.life_motto}
  end

  def self.least_popular
    least_popular_cult = @@all[0]
    i = 1
    while i < @@all.length
      if @@all[i].followers.count < least_popular_cult.followers.count
        least_popular_cult = @@all[i]
      end
      i += 1
    end
    return least_popular_cult
  end

  def self.most_common_location
    location_hash = {}
    @@all.each do |cult|
      if !location_hash[cult.location]
        location_hash[cult.location] = 1
      else
        location_hash[cult.location] += 1
      end
    end
    common_location = location_hash.keys[0]
    location_hash.each do |location, count|
      if count > location_hash.values[0]
        common_location = location
      end
    end
    common_location 
  end

# binding.pry

end

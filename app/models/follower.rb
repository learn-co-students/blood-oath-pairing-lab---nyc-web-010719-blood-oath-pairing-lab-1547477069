class Follower

  attr_accessor :name, :age, :life_motto

  @@all = []

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    @@all.select do |follower|
      follower.age == age
    end
  end

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end


  def bloodoaths
    BloodOath.all.select do |bo|
      bo.follower == self
    end
  end

  def cults
    bloodoaths.map do |bo|
      bo.cult
    end
  end

  def join_cult(cult)
    BloodOath.new("_#{Date.today}_",self,cult)
  end




end #end of follower class

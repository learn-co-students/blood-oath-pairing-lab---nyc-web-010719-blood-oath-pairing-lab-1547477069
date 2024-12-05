require 'pry'

class Follower

  attr_accessor :name, :age, :life_motto
  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end

  def blood_oaths
    BloodOath.all.select do |b|
      b.follower == self
    end
  end

  def cults
    self.blood_oaths.map do |o|
      o.cults
    end
  end

  def self.all
    @@all
  end

  def join_cult(cult)
    # cult.followers << self
    BloodOath.new(cult,self)
    # binding.pry
  end

  def self.of_a_certain_age(age)
    self.all.select do |a|
      a.age > age
    end
  end

end

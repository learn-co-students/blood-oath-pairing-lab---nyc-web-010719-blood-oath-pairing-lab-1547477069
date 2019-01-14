class Follower

  attr_accessor :age, :life_motto, :cults
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @cults = []
    @@all << self
  end

  def join_cult(cult)
    BloodOath.new(self, cult)
  end

  def self.of_a_certain_age(age)
      @@all.select do | follower |
        follower.age >= age
      end
  end

end # end of Followers

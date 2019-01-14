class Follower

  attr_accessor :age, :life_motto
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

  def join_cult(cult, date)
    if self.age < cult.minimum_age
      print "Sorry U are too young to join."
    else
      BloodOath.new(self, cult, date)
    end
  end

  def self.of_a_certain_age(age)
      @@all.select do | follower |
        follower.age >= age
      end
  end

    ######advanced methods

  def my_cults_slogans
    self.cults.map { | cult | cult.slogan }
  end

  def self.activity_helper
    @@all.sort_by { | follower | - follower.cults.size }
  end

  def self.most_active
    most_active_follower = self.activity_helper
    most_active_follower[0]
  end

  def self.top_ten
    most_active_follower = self.activity_helper
    most_active_follower[0..9]
  end

  def fellow_cult_members
    @@all.select do | follower |
      follower.cults == self.cults
    end
  end

  def blood_oaths
    BloodOath.all.select do | oath |
      oath.follower == self
    end
  end

  def cults
    self.blood_oaths.map do | oath |
      oath.cult
    end
  end

end # end of Followers

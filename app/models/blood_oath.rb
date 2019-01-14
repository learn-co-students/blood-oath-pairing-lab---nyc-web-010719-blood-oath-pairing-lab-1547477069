class BloodOath

  attr_reader :initiation_date
  attr_accessor :cult, :follower


  @@all = []

  def self.all
    @@all
  end

  def initialize(initiation_date, cult, follower)
    @initiation_date = initiation_date
    @cult = cult
    @follower = follower


    @@all << self

  end

  def self.first_oath
    earliest_oath = @@all[0]
    i = 1
    while i < @@all.length
      if @@all[i].initiation_date < earliest_oath.initiation_date
        earliest_oath = @@all[i]
      end
      i += 1
    end
    return earliest_oath.follower
  end


end

class BloodOath

  attr_accessor :initiation_date
  attr_reader :follower, :cult

  @@all = []

  def self.all
    @@all
  end


  def initialize(initiation_date, follower, cult)
    @initiation_date = initiation_date
    @follower = follower
    @cult = cult

    @@all << self
  end


end

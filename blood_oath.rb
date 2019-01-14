class BloodOath

  attr_accessor # :date
  attr_reader :follower, :cult
  attr_writer :date

  @@all = []

  def self.all
    @@all
  end

  def initialize(follower, cult)
    @follower = follower
    @cult = cult
    # @date = date
    cult.followers << follower
    follower.cults << cult
    @@all << self
  end

  def initiation_date
    @date
  end

end # end of Follower

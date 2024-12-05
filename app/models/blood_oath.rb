class BloodOath

  attr_accessor :initiation_date
  attr_reader :cults, :followers
  @@all = []

  def initialize(cults, followers)
    # @initiation_date = initiation_date
    @cults = cults
    @followers = followers

    @@all << self
  end
  def initiation_date(str)
    @initiation_date
  end

  def self.all
    @@all
  end

end

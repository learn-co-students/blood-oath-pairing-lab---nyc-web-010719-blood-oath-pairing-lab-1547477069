class BloodOath

  attr_accessor :initiation_date
  attr_reader :follower, :cult

  @@all = []

  def self.all
    @@all
  end

  def self.first_oath
    container =[]
    @@all.map do |bo|
      bo.initiation_date = bo.format
      container << bo
    end
    answer = container.sort_by do |bo|
      bo.initiation_date
    end
    answer[0]
 end


  def initialize(initiation_date, follower, cult)
    @initiation_date = initiation_date
    @follower = follower
    @cult = cult

    @@all << self
  end

  def format
    formatted = self.initiation_date.tr('_','')
    Date.parse(formatted)
    #binding.pry
  end






end

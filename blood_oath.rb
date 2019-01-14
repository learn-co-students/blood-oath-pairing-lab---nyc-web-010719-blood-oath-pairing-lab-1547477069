class BloodOath

  attr_reader :follower, :cult, :date

  @@all = []

  def self.all
    @@all
  end

  def initialize(follower, cult, date)
    @follower = follower
    @cult = cult
    @date = date
    cult.followers << follower
    follower.cults << cult
    @@all << self
  end

  def initiation_date
    @date
  end

  def self.first_oath
    dates_array = @@all.map { | oath | oath.initiation_date }
    integer_dates = dates_array.map { | date | date.gsub(/[_-]/, "").to_i }
    ordered_dates = integer_dates.sort
    "_#{ordered_dates[0]}_".gsub(/(\d{4})(\d{2})(\d{2})/, '\1-\2-\3')
  end

end # end of Follower

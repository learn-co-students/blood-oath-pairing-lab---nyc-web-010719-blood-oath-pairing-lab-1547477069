class Follower

  attr_reader :name, :life_motto
  attr_accessor :age, :cult

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, life_motto, age)
    @name = name
    @life_motto = life_motto
    @age = age
    @@all << self
  end

  def blood_oath
    BloodOath.all.select do |blood_oath|
      blood_oath.follower == self
    end
  end

  def cults
    self.blood_oath.map do |b_o|
      b_o.cult
    end
  end

  def join_cult(cult)
    new_b_o = BloodOath.new(Time.now.strftime("%Y/%m/%d"), cult, self)
    self.cults
  end

  def self.of_a_certain_age(num)
    @@all.select {|followers| followers.age >= num}
  end


  def my_cults_slogans
    self.cults.map {|cult| cult.slogan}
  end

  def self.most_active
    most_active = @@all[0]
    i = 1
    while i < @@all.length
      if @@all[i].cults.count > most_active.cults.count
        most_active = @@all[i]
      end
      i += 1
    end
    most_active
  end

  def self.top_ten
    top_ten_hash = {}
    @@all.each do |follower|
      if !top_ten_hash[follower]
        top_ten_hash[follower] = follower.blood_oath.count
      end
    end
    top_ten_hash.sort_by {|follower, count| -count}[0..9]
  end






end

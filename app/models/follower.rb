class Follower

  attr_accessor :name, :age, :life_motto

  @@all = []

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    @@all.select do |follower|
      follower.age >= age
    end
  end

  def self.most_active
    # cycle through all followers to see how many cults they have joined
    # return the follower with the most cults
    # container = {}
    # @@all.each do |follower|
    #   container[follower.name] = follower.cults.length
    # end
    # container.keys.max
    most_number = nil
    most_active_follower = ""

    @@all.each do |follower|
      if !most_number
        most_number = follower.cults.length
        most_active_follower = follower
      elsif most_number < follower.cults.length
        most_number = follower.cults.length
        most_active_follower = follower
      end
    end

    most_active_follower
  end


  def self.top_ten
    # take array of all followers
    # order array by cults.length
    # return top 10
    array = @@all.sort_by do |follower|
      follower.cults.length
    end
    array.reverse!
    array.slice(0..9)
  end

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end


  def bloodoaths
    BloodOath.all.select do |bo|
      bo.follower == self
    end
  end

  def cults
    bloodoaths.map do |bo|
      bo.cult
    end
  end

  def join_cult(cult)
    if self.age > cult.min_age
      BloodOath.new("_#{Date.today}_",self,cult)
    else
      "You are too young to join come back with a a fake ID"
    end
  end

  def my_cults_slogans
    cults.each do |cult|
      puts cult.slogan
    end
  end

  def fellow_cult_members
    my_friends = []
    self.cults.map do |my_cult|
      my_cult.bloodoaths.each do |bo|
        if bo.follower != self
          my_friends << bo.follower
        end
      end
   end
  my_friends.flatten
 end







end #end of follower class

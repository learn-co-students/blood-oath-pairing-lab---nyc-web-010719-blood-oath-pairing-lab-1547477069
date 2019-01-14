require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
crossfit = Cult.new("Crossfit", "NYC", 1998, "Work Hard!", 21)

starbucks = Cult.new("Starbucks", "NYC", 2018, "Drink coffee", 16)

apple = Cult.new("Apple", "Chicago", 2017, "Eat apples!", 2)


peter = Follower.new("Peter", 25, "Cults are king!")

katie = Follower.new("Katie", 30, "I'm so old!!!")

zev = Follower.new("Zev", 20, "I'm not so young")




bo1 = BloodOath.new("_2012-04-22_",zev, apple)

bo2 = BloodOath.new("_2019-01-14_", katie, apple)

bo3 = BloodOath.new("_2010-01-14_", peter, apple)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

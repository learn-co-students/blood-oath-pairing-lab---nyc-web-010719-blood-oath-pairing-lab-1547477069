require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
crossfit = Cult.new("Crossfit", "NYC", 1998, "Work Hard!")

starbucks = Cult.new("Starbucks", "NYC", 2018, "Drink coffee")

peter = Follower.new("Peter", 25, "Cults are king!")

katie = Follower.new("Katie", 30, "No Motto")


bo1 = BloodOath.new("_2012-04-22_",peter,crossfit)

bo2 = BloodOath.new("_2019-01-14_", katie, crossfit)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

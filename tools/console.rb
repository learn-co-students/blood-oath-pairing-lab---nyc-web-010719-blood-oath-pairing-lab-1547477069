require_relative '../config/environment.rb'
require_relative '../app/models/blood_oath.rb'
require_relative '../app/models/cult.rb'
require_relative '../app/models/followers.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("Cult 1", "New York", 2018, "Superman")
c2 = Cult.new("Cult 2", "New Jersey", 2016, "Batman")

f1 = Follower.new("Sam", 22, "Dark Knight")
f2 = Follower.new("John", 24, "Man of Steel")
f3 = Follower.new("bo", 34, "spiderman")

b1 = BloodOath.new(c1, f1)
b2 = BloodOath.new(c2, f2)

# c2.cult_population
# c2.recruit_follower(f2)
# puts c2.cult_population
# c2.recruit_follower(f1)
# puts c2.cult_population
# c2.recruit_follower(f3)
f1.join_cult(c1)

puts c2.cult_population


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

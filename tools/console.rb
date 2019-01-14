require_relative '../config/environment.rb'
require_relative '../cult.rb'
require_relative '../follower.rb'
require_relative '../blood_oath.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# c1 = Cult.new("BigBoiz")
# c2 = Cult.new("Heavens Gate")
# c3 = Cult.new("Solarians")
#
# f1 = Follower.new("Bob")
# f2 = Follower.new("Bill")
# f3 = Follower.new("Steve")
# f4 = Follower.new("Jimbo")
# f5 = Follower.new("Mike")
# f6 = Follower.new("Sarah Lee")
# f7 = Follower.new("Mary Jane")
# f8 = Follower.new("Sally Mae")
#
# c1.location = "l3"
# c2.location = "l2"
# c3.location = "l2"
#
# c1.founding_year = 982
# c2.founding_year = 892823
# c3.founding_year = 982
#
# c1.slogan = "cool guys hanging out"
# c2.slogan = "second slogan"
# c3.slogan = "fun time today"
#
#
# # f1.join_cult(c1, "asldjf")
# # f1.join_cult(c2, "asdf")
# # f1.join_cult(c3, "sdfsdaflkj")
# # f4.join_cult(c1)
# # f5.join_cult(c1)
# # f6.join_cult(c1)
# # f7.join_cult(c1)
# # f7.join_cult(c2)
# # f7.join_cult(c3)
# #
# # c2.recruit_follower(f2)
#
# f1.age = 12
# f2.age = 40
# f3.age = 30
#
# f1.life_motto = "fun"
# f2.life_motto = "fun and cool"
# f3.life_motto = "cool"
#
# puts c1.followers
# puts f1.cults
#
# b1 = BloodOath.new(f1, c2, "_2009-01-48_")
# b2 = BloodOath.new(f2, c3, "_2003-02-48_")
# b3 = BloodOath.new(f3, c3, "_2004-01-48_")
# b4 = BloodOath.new(f4, c2, "_2001-03-48_")
# b5 = BloodOath.new(f5, c2, "_2004-04-49_")
# b6 = BloodOath.new(f6, c1, "_2007-01-48_")
#
# c1.minimum_age = 20
#
# Cult.most_common_location

f1 = Follower.new("f1")
f1.age = 30
f2 = Follower.new("f2")
f2.age = 30
f3 = Follower.new("f3")
f3.age = 30

c1 = Cult.new("c1")
c1.minimum_age = 20
c2 = Cult.new("c2")
c2.minimum_age = 20
c3 = Cult.new("c3")
c3.minimum_age = 20

f1.join_cult(c1, "_2018-02-01_")
f1.join_cult(c2, "_2018-02-01_")
c1.recruit_follower(f2, "_2018-02-01_")
c2.recruit_follower(f2, "_2018-02-01_")
b1 = BloodOath.new(f3, c3, "_2018-02-01_")


puts f1.cults
puts c1.followers

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

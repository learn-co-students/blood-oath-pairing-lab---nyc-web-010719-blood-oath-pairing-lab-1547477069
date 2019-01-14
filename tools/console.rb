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

c1 = Cult.new("BigBoiz")
c2 = Cult.new("Heavens Gate")
c3 = Cult.new("Solarians")

f1 = Follower.new("Bob")
f2 = Follower.new("Bill")
f3 = Follower.new("Steve")

c1.location = "l1"
c2.location = "l1"
c3.location = "l2"

c1.founding_year = 982
c2.founding_year = 892823
c3.founding_year = 982

f1.join_cult(c1)
c2.recruit_follower(f2)

f1.age = 12
f2.age = 40
f3.age = 20

puts c1.followers
puts f1.cults

b1 = BloodOath.new(f3, c2)
b1.date = "_2001-01-48_"
puts b1.initiation_date

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

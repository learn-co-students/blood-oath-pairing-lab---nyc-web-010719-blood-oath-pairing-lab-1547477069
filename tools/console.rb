require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

heavens_gate = Cult.new("Heavens Gate", "California", 1966, "Manson Family")
flatiron_cult = Cult.new("Flatiron School", "NYC", 2006, "Avi luvs u")
other_cult = Cult.new("Other", "NYC", 2001, "Avi doesn't luv u")
other_cult2 = Cult.new("Other2", "Canada", 2001, "Avi doesn't luv u")
other_cult3 = Cult.new("Other3", "Canada", 2001, "Avi doesn't luv u")
other_cult4 = Cult.new("Other4", "Canada", 2001, "Avi doesn't luv u")


f2 = Follower.new("Eli", "Whatever", 25)
f3 = Follower.new("Humzah", "Niiiiiiice", 69)
f4 = Follower.new("Robert", "Go big or go home", 26)
f5 = Follower.new("Emily", "Whatever", 25)
f6 = Follower.new("Clarence", "Niiiiiiice", 69)
f7 = Follower.new("Cynthia", "Go big or go home", 26)
f8 = Follower.new("Zach", "Whatever", 25)
f9 = Follower.new("Mike", "Niiiiiiice", 69)
f10 = Follower.new("David", "Go big or go home", 26)
f11 = Follower.new("Joe", "Whatever", 25)
f12 = Follower.new("Dan", "Niiiiiiice", 69)
f1 = Follower.new("Sarah", "Go big or go home", 26)

oath1 = BloodOath.new("2019-01-07", flatiron_cult, f1)
oath2 = BloodOath.new("1966-06-06", heavens_gate, f2)
oath3 = BloodOath.new("2018-01-01", heavens_gate, f3)
oath4 = BloodOath.new("2017-01-01", heavens_gate, f4)
oath5 = BloodOath.new("2016-01-01", heavens_gate, f5)
oath6 = BloodOath.new("2013-01-01", heavens_gate, f6)
oath7 = BloodOath.new("2012-01-01", heavens_gate, f7)
oath8 = BloodOath.new("2014-01-01", heavens_gate, f8)
oath9 = BloodOath.new("2015-01-01", heavens_gate, f9)
oath10 = BloodOath.new("2015-01-01", heavens_gate, f10)
oath11 = BloodOath.new("1966-01-01", heavens_gate, f4)
oath12 = BloodOath.new("1996-01-01", heavens_gate, f3)
oath13 = BloodOath.new("1950-12-01", other_cult, f2)
oath14 = BloodOath.new("1995-12-05", heavens_gate, f1)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

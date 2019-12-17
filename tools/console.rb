require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# CULT
# def initialize(name, location, founding_year, slogan)
c1 = Cult.new("Wise Women", "Seattle", 1802, "Be Wise")
c2 = Cult.new("Magic Men", "Vancouver", 1503, "It's Magic Time")
c3 = Cult.new("Order of the Gentlemen", "Springfield", 1999, "Join Our Cult")
c4 = Cult.new("Association of Wizards", "Portland", 1204, "We're Literally Wizards") 
c5 = Cult.new("Coders Anonymous", "London", 1111, "We're Actually Not A Cult")

# FOLLOWER
# def initialize(name, age, life_motto)
f1 = Follower.new("Greg", 101, "I ain't got nothin' else better to do")
f2 = Follower.new("George", 26, "I've honestly just given up")
f3 = Follower.new("Sydney", 31, "I'm ready to recruit!")
f4 = Follower.new("Samuel", 19, "I got roped into this")
f5 = Follower.new("Lacey", 44, "Oh boy, here I go cultin' again")

# BLOODOATH
# def initialize(cult, follower, initiation_date)
b1 = BloodOath.new(c1, f2, "20190102")
b2 = BloodOath.new(c2, f3, "20180203")
b3 = BloodOath.new(c3, f2, "20170304")
b4 = BloodOath.new(c4, f1, "20160405")
b5 = BloodOath.new(c5, f2, "20170506")
b6 = BloodOath.new(c3, f4, "20160607")
b7 = BloodOath.new(c3, f5, "20150708")
b8 = BloodOath.new(c2, f5, "20140809")
b9 = BloodOath.new(c1, f5, "20130910")
b10 = BloodOath.new(c1, f5, "20121221")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits


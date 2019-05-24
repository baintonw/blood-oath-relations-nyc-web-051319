require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#followers
will = Followers.new("Will", "31", "I eat babies")
yana = Followers.new("Yana", "31", "I burn incense")
jeremy = Followers.new("Jeremy", "8", "Hell yeah")
susan = Followers.new("Susan", "85", "Has anyone seen my diaper?")
tabitha = Followers.new("Tabitha", "6", "Let's have a tea party!")
gabe = Followers.new("Gabe", "27", "I could use a beer")
#cults
blood_witch = Cults.new("Blood Witch", "Westchester", "1932", "We go after people")
death_skulls = Cults.new("Death Skulls", "Jacksonville", "2000", "Doom and Gloom")
evil_eye = Cults.new("Evil Eye", "Peoria", "1492", "Yeah BABY")
dirty_vampires = Cults.new("Dirty Vampires", "Transylvania", "1492", "I vant to suck your blood")
arctic_voyagers = Cults.new("Arctic Voyagers", "Westchester", "1492", "Bada Bing Bada Boom")
yana.join_cult(blood_witch)
jeremy.join_cult(blood_witch)

will.join_cult(blood_witch)

will.join_cult(evil_eye)
will.join_cult(dirty_vampires)
susan.join_cult(blood_witch)
susan.join_cult(dirty_vampires)
tabitha.join_cult(evil_eye)

blood_witch.recruit_follower(tabitha)
death_skulls.recruit_follower(tabitha)






puts blood_witch.bloodoaths




# puts "Mwahahaha!" # just in case pry is buggy and exits

# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

jamieson = Lifter.new("Jamieson", 20)
michael = Lifter.new("Michael", 30)
anthony = Lifter.new("Anthony", 10)

golds = Gym.new("Golds")
twenty = Gym.new("24 Hour")
anytime = Gym.new("Anytime")

membership1 = Membership.new(20, jamieson, golds)
membership2 = Membership.new(20, michael, golds)
membership3 = Membership.new(10, michael, anytime)
membership4 = Membership.new(20, anthony, golds)
membership5 = Membership.new(60, anthony, twenty)
membership6 = Membership.new(10, anthony, anytime)

membership7 = michael.new_gym(twenty, 60)

# puts Membership.all
# puts Gym.all
# puts Lifter.all

# puts anthony.get_memberships
# puts golds.get_memberships

# puts anthony.get_gyms
# puts golds.get_lifters

# puts golds.get_lifter_names

# puts golds.lift_total

# puts Lifter.avg_lift
# puts anthony.mem_cost

binding.pry

puts "Gains!"

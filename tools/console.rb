require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jordan = Lifter.new("Jordan", 9999999)
twenty4 = Gym.new("24 Hour Fitness")
hole_in_pocket = Membership.new(40, jordan, twenty4)




binding.pry
 puts "amazing"
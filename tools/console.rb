require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jordan = Lifter.new("Jordan", 9999999)

twenty4 = Membership.new(40, jordan)


binding.pry
 puts "amazing"
class Membership
  ALL = []

  attr_reader :cost, :lifter

  def initialize(cost, lifter)
    @cost = cost
    @lifter = lifter
    ALL << self
  end
  
  def self.all 
    ALL
  end


end

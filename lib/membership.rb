class Membership
  attr_reader :cost, :lifter, :gym

  @@all = []

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym

    @@all.push(self)
  end

  def self.all
    @@all
  end
  
end

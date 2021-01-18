class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.avg_lift
    lift_arr = self.all.map{|lifters| lifters.lift_total}
    lift_arr.sum(0.0)/lift_arr.count
  end

  def get_memberships
    Membership.all.select {|memberships| memberships.lifter == self}
  end

  def get_gyms
    self.get_memberships.map {|mem_inst| mem_inst.gyme}
  end

  def mem_cost
    self.get_memberships.map {|memberships| memberships.cost}.sum(0.0)
  end

  def new_gym(gym, cost) 
    Membership.new(cost, self, gym)
  end
end

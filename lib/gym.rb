class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all.push(self)
  end

  def self.all
    @@all
  end
  
  def get_memberships
    Membership.all.select {|memberships| memberships.gym == self}
  end

  def get_lifters
    self.get_memberships.map {|mem_inst| mem_inst.lifter}
  end

  def get_lifter_names
    self.get_lifters.map {|lift_inst| lift_inst.name}
  end

  def lift_total
    self.get_lifters.map{|lift_inst| lift_inst.lift_total}.sum(0.0)
  end
end

require_relative "bike"

class DockingStation

  

  attr_reader :bike

  def initialize(capacity)
    @bikes = []
    @capacity = capacity
  end
  
  def release_bike
    fail "no bikes available" if self.bikes_empty?
    @bikes.pop
  end
  
  def dock(bike)
    fail "docking station full" if self.full?
    @bikes.push(bike)
  end

  private 

  def full?
    return @bikes.count >= DEFAULT_CAPACITY
  end

  def bikes_empty?
    return @bikes.empty?
  end
end


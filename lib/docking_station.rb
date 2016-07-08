class DockingStation
  DEFAULT_CAPACITY = 20


  def initialize(capacity)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise 'Bike Unavailable!' if empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'No spaces available' if full?
    @bikes << bike
  end

  private
  
  attr_reader :bikes
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end

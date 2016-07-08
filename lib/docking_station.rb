class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_reader :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
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


  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise 'Bike Unavailable!' if empty?
    bikes.pop
  end

  def dock(bike)
    raise 'No spaces available' if full?
    bikes << bike
  end

  private

  attr_reader :bikes

  def full?
    bikes.length >= capacity
  end

  def empty?
    bikes.empty?
  end
end

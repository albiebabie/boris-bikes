class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
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
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end
end

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'Bike Unavailable!' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'No spaces available' if @bikes.length >= 20
    @bikes << bike
  end
end

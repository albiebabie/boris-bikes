class DockingStation

  attr_reader :bike

  def release_bike
    raise 'Bike Unavailable!' unless @bike
    @bike
  end

  def dock(bike)
    raise 'No spaces available' if @bike
    @bike = bike
  end
end

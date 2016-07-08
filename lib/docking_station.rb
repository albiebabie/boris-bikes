require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    raise 'Bike Unavailable!' unless @bike
    @bike = bike
  end

  def dock(bike)
    @bike = bike
  end

  def available?(docking_station)
    raise 'Bike Unavailable!'
  end
end

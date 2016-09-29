# require_relative 'bike'

class DockingStation

  def initialize
    @bike_array = Array.new


  end

  #attr_reader :bike #Use method #bike to check bike docked at station

  def bike
    @bike_array #shows all bikes at the station
  end

  def release_bike
    fail 'No bikes available' unless !empty?
    @bike_array.pop
  end

   def dock(bike)
     # We need to return the bike we dock
     fail 'Docking station at capacity' if full?
     @bike_array.push(bike)
  end

private

  def full?
    @bike_array.count >= 20
  end

  def empty?
    @bike_array.empty?
  end

end


#manchester = DockingStation.new
#suthportred = Bike.new

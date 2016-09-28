# require_relative 'bike'

class DockingStation

  attr_reader :bike #Use method #bike to check bike docked at station

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

   def dock(bike)
     # We need to return the bike we dock
     fail 'Docking station at capacity' if @bike
     @bike = bike
  end
end

# require_relative 'bike'

class DockingStation

  attr_reader :bike

 def release_bike
  fail 'No bikes available' unless @bike
  @bike
  @docking_available = true
 end

 def dock(bike)
   # We need to return the bike we dock
   fail 'Docking station at capacity' unless @docking_available
   @bike = bike
   @docking_available = false
 end



end

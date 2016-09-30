# require_relative 'bike'

class DockingStation

attr_accessor :capacity
attr_reader :bike

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike_array = Array.new
    @capacity = capacity
    @broken_bikes = []
  end


  def release_bike
    fail 'No bikes available' unless !empty?
    bike_array.pop
  end

  def release_broken_bike
    broken_bikes
  end

   def dock(bike)

    fail 'Docking station full' if full?
     # We need to return the bike we dock
     if bike.working == false
      broken_bikes << bike
      "Thank you for reporting and returning this broken bike"
    else
      bike_array.push(bike)
   end
  end

private

attr_reader :bike_array, :broken_bikes

  def full?
    (bike_array.count + broken_bikes.count) >= capacity
  end

  def empty?
    bike_array.empty?
  end

end

# require_relative 'bike'

class DockingStation

attr_accessor :capacity
attr_reader :bike

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike_array = Array.new
    @capacity = capacity
  end


  def release_bike
    fail 'No bikes available' unless !empty?
    bike_array.pop
  end

   def dock(bike)
     # We need to return the bike we dock
     fail 'Docking station full' if full?
     bike_array.push(bike)
  end

private

attr_reader :bike_array

  def full?
    bike_array.count >= capacity
  end

  def empty?
    bike_array.empty?
  end

end

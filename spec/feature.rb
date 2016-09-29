require '../lib/docking_station.rb'
require '../lib/bike.rb'
p manchester = DockingStation.new(50)
p manchester.capacity
p red = Bike.new
p red.working?
p manchester.dock(red)
p manchester
p manchester.full?
p manchester.bike_array.count
p 48.times {manchester.dock(red)}
p manchester
p manchester.bike_array.count
p manchester.full?
p blue = Bike.new
p manchester.dock(blue)
p manchester.bike_array.count
p manchester.full?
p yellow = Bike.new
p manchester.dock(yellow)

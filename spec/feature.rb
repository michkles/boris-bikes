require '../lib/docking_station.rb'
require '../lib/bike.rb'
puts manchester = DockingStation.new(50)
puts manchester.capacity
red = Bike.new
blue = Bike.new
p manchester.dock(red)
p manchester.dock(blue)

#49.times {manchester.dock(red)}
p manchester
#puts manchester.capacity =

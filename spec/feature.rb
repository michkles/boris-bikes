require '../lib/docking_station.rb'
require '../lib/bike.rb'
docking_station = DockingStation.new
puts 20.times {docking_station.dock Bike.new}

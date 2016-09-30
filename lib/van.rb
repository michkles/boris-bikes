class Van
  def collect(docking_station)
    @broken_bike = docking_station.release_broken_bike
  end
  
  def broken_bike_number
    @broken_bike.nil? ? 0 : @broken_bike.count
  end


end

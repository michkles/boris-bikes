class Van
  def collect(docking_station)
    @van_broken_bike = docking_station.release_broken_bike
  end

  def broken_bike_number
    @van_broken_bike.nil? ? 0 : @van_broken_bike.count
  end

  def deliver(garage)
   
  end

end

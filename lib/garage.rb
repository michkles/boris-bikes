class Garage

  def broken_bikes
    @garage_broken_bike.nil? ? 0 : @garage_broken_bike
  end

  def collect(broken_bikes)
    @garage_broken_bike = broken_bikes
  end

end

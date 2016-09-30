class Garage
  def initialize
    @garage_fixed_bikes = []
  end

  def broken_bikes
    @garage_broken_bike.nil? ? 0 : @garage_broken_bike
  end

  def collect(broken_bikes)
    @garage_broken_bike = broken_bikes
  end

  def fix_bikes

  end

end

=begin
  @garage_broken_bike.each do |bike|
    @garage_fixed_bikes << (bike.working = true)
  end
=end

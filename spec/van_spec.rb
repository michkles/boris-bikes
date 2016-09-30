require 'van'


describe Van do
  it 'should respond to collect method' do
    expect(subject).to respond_to :collect
  end


  it 'should know there are no bikes on board' do
    expect(subject.broken_bike_number).to eq 0
  end

  it 'should collect broken bikes from docking station' do
    van = Van.new
    broken_bike = double(:bike, working: false)
    docking_station = DockingStation.new
    docking_station.dock(broken_bike)
    expect(subject.collect).to eq broken_bike
  end

end
=begin
  it 'should know there is 1 bike on board' do
    broken_bike = double(:bike, working: false)
    expect(subject.broken_bike_number).to eq broken_bike
  end
=end

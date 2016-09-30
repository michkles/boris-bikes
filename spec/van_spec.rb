require 'van'


describe Van do
  it 'should respond to collect method' do
    expect(subject).to respond_to :collect
  end


  it 'should know there are no bikes on board' do

    expect(subject.broken_bike_number).to eq 0
  end

  it 'should collect broken bikes from docking station' do

    broken_bike = double(:bike, working: false)
    docking_station = DockingStation.new
    docking_station.dock(broken_bike)
    expect(subject.collect(docking_station)).to eq [broken_bike]
  end

  it 'should collect broken bikes from docking station' do
    docking_station = DockingStation.new
    expect{subject.collect(docking_station)}.to raise_error "no broken bikes available"
  end

  it 'should know there is 1 bike on board' do
    broken_bike = double(:bike, working: false)
    docking_station = DockingStation.new
    docking_station.dock(broken_bike)
    subject.collect(docking_station)
    expect(subject.broken_bike_number).to eq 1
  end

  it 'should deliver bikes to Garage' do
    broken_bike = double(:bike, working: false)
    docking_station = DockingStation.new
    garage = Garage.new
    docking_station.dock(broken_bike)
    subject.collect(docking_station)
    subject.deliver(garage)
  end

  

end

require 'van'


describe Van do
  let(:broken_bike) { double(:bike, working: false) }

  before(:each) do
    @docking_station = DockingStation.new
    @garage = Garage.new
  end

  it 'should respond to collect method' do
    expect(subject).to respond_to :collect
  end


  it 'should know there are no bikes on board' do

    expect(subject.broken_bike_number).to eq 0
  end

  describe '#collect' do

    it 'should collect broken bikes from docking station' do
      @docking_station.dock(broken_bike)
      expect(subject.collect(@docking_station)).to eq [broken_bike]
    end


    it 'should collect broken bikes from docking station' do
      expect{subject.collect(@docking_station)}.to raise_error "no broken bikes available"
    end


    it 'should know there is 1 bike on board' do
      @docking_station.dock(broken_bike)
      subject.collect(@docking_station)
      expect(subject.broken_bike_number).to eq 1
    end
  end

  it 'should deliver bikes to Garage' do
    @docking_station.dock(broken_bike)
    subject.collect(@docking_station)
    subject.deliver(@garage)
    expect(@garage.broken_bikes).to eq [broken_bike]
  end




end

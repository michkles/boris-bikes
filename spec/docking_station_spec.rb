require 'docking_station'

describe DockingStation do

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    subject.dock(Bike.new)
    bike = subject.release_bike #FIX HERE
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:bike) }

  describe '#release_bike' do
    it 'returns error when no bike available' do
      #subject.release_bike
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end
  
  it 'returns error when docking station is full' do
    bike = Bike.new
    expect {subject.dock(bike)}.to raise_error 'Docking station at capacity'
  end

end

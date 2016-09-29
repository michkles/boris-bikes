require 'docking_station'

describe DockingStation do


  it 'has default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end


    describe 'initialization' do
<<<<<<< HEAD
      subject { DockingStation.new }
      let(:bike) { Bike.new }
      it 'defaults capacity' do
        DockingStation::DEFAULT_CAPACITY.times do
          subject.dock(bike)
        end
        expect{ subject.dock(bike) }.to raise_error 'Docking station full'
      end
    end

=======
  it 'has a variable capacity' do
    docking_station = DockingStation.new(50)
    50.times { docking_station.dock Bike.new }
    p docking_station
    expect{ docking_station.dock Bike.new }.to raise_error 'Docking station full'
  end
end
>>>>>>> 29975f91b1e215cc83b6a1b9404f39673bd8dfa5


=begin
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
expect(subject.bike.pop).to eq bike
  end
=end

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    subject.dock(Bike.new)
    bike = subject.release_bike #FIX HERE
    expect(bike).to be_working
  end

<<<<<<< HEAD
  #it { is_expected.to respond_to :bike }
=======
  it { is_expected.to respond_to (:bike) }
>>>>>>> 29975f91b1e215cc83b6a1b9404f39673bd8dfa5

  describe '#release_bike' do
    it 'returns error when no bike available' do
      #subject.release_bike
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'returns error when docking station is full' do
    #subject.dock(Bike.new)
      bike = Bike.new
    DockingStation::DEFAULT_CAPACITY.times do
     subject.dock(bike)
      #expect {subject.dock(bike)}.to raise_error 'Docking station at capacity'
    end
  end
 end
 end

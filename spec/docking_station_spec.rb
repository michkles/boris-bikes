require 'docking_station'

describe DockingStation do


  it 'has default capacity' do
     expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
    it 'has a variable capacity' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock Bike.new }
      expect{ docking_station.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

 it 'returns docked bikes' do
   bike = Bike.new
   subject.dock(bike)
   expect(subject.release_bike).to eq bike
 end

 it { is_expected.to respond_to :release_bike }

 it 'releases working bikes' do
   subject.dock(Bike.new)
   bike = subject.release_bike #FIX HERE
   expect(bike.working).to be true
 end

 it { is_expected.to respond_to (:bike) }

 describe '#release_bike' do
   it 'returns error when no bike available' do
     expect {subject.release_bike}.to raise_error 'No bikes available'
   end

   it "shouldn't return a broken bike" do
     broken_bike = Bike.new
     broken_bike.report_broken
     subject.dock(broken_bike)
     expect{subject.release_bike}.to raise_error 'No bikes available'
   end
 end

 describe '#dock' do
   it 'returns error when docking station is full' do
    bike = Bike.new
    DockingStation::DEFAULT_CAPACITY.times {subject.dock(bike)}
    expect {subject.dock(bike)}.to raise_error 'Docking station full'
   end

  it "recognises a broken bike" do
    broken_bike = Bike.new
    broken_bike.report_broken
    expect(subject.dock(broken_bike)).to eq "Thank you for reporting and returning this broken bike"

    end
 end


end

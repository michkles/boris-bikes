require 'garage'

describe Garage  do
  it 'should know there are no bikes in the garage' do

    expect(subject.broken_bikes).to eq 0
  end

  it 'should collect bikes' do
    bike=Bike.new
    subject.collect(bike)
    expect(subject.broken_bikes).to eq bike
  end

  it { is_expected.to respond_to :fix_bikes }

  it 'should fix the broken bikes'
    bike=Bike.new
    subject.collect(bike)
    subject.fix_bikes
    expect(subject.broken_bikes).to eq 0



end

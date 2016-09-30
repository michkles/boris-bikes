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
end

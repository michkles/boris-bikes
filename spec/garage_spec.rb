require 'garage'

describe Garage  do
  it 'should know there are no bikes in the garage' do

    expect(subject.broken_bike_number).to eq 0
  end

end

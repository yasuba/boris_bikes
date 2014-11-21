require 'van'

describe Van do
  let(:van) {Van.new}
  let(:broken_bike) {double :bike, working?: false}
  let(:station) {double :station}

  it 'can accept broken bikes from docking station' do
    expect(station).to receive(:release).with(:broken_bike)
    van.accept_from(station)
  end

  it 'should have a broken bike after accepting one' do
    allow(station).to receive(:release).with(:broken_bike)
    van.accept_from(station)
    expect(van.dock(:broken_bike)).to eq [:broken_bike]
  end

end
require 'docking_station'

describe DockingStation do
  let(:station) {DockingStation.new}
  let(:bike) {double :bike, broken?: false}
  let(:broken_bike) {double :bike, broken?: true}

  it 'should know when it is empty' do
    expect(station.empty?).to eq true
  end

end
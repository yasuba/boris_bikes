require 'bikecontainer'
require 'docking_station'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do
  let(:holder) {BikeContainer.new}
  let(:station) {DockingStation.new}
  let(:bike) {double :bike, broken?: false}
  let(:broken_bike) {double :bike, broken?: true}

  it 'has no bikes' do
    expect(station).not_to have_bikes
  end

  it 'can dock bikes' do
    station.dock(bike)
    expect(station).to have_bikes
  end

  it 'can only release working bikes' do
    station.dock(bike)
    station.dock(broken_bike)
    expect(station.release_working_bikes).to eq [bike]
  end

  it 'can only release broken bikes' do
    station.dock(bike)
    station.dock(broken_bike)
    station.broken_bikes
    expect(station.release_broken_bikes).to eq [broken_bike]
  end

  it 'should know when it is full' do
    (BikeContainer::BIKECONTAINER_CAPACITY).times {station.dock(bike)}
    expect(station).to be_full
  end

  it 'should not accept bikes when it is full' do
    (BikeContainer::BIKECONTAINER_CAPACITY).times {station.dock(bike)}
    expect{station.dock(bike)}.to raise_error
  end

  it 'should not release bikes when it is empty' do
    expect{station.release_broken_bikes}.to raise_error
  end

end
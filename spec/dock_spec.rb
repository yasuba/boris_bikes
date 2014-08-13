require 'dock'
require 'bike'
require 'bike_container'

describe DockingStation do
	let(:station) {DockingStation.new}

	def fill_station(station)
		station.capacity.times {station.store(Bike.new)}
	end

	it_behaves_like "a BikeContainer"

	context 'on initialisation' do
		it 'should allow setting default capacity' do
		expect(station.capacity).to eq(BikeContainer::DEFAULT_CAPACITY)
		end
	end

	
end
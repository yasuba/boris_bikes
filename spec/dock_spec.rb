require 'dock'
require 'bike'

describe DockingStation do
	let(:station) {DockingStation.new(:capacity => 20)}
	let(:bike) {Bike.new}

	def fill_station(station)
		20.times {station.store(Bike.new)}
	end

	context 'on initialisation' do
		it 'should allow setting default capacity' do
		expect(station.capacity).to eq(20)
		end
	end

	
end
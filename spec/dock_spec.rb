require 'dock'
require 'bike'

describe DockingStation do
	let(:station) {DockingStation.new(:capacity => 123)}
	let(:bike) {Bike.new}

	it 'should allow setting default capacity on initialising' do
		expect(station.capacity).to eq(123)
	end
	# def fill_station(station)
	# 	20.times {station.dock(Bike.new)}
	# end

	# context 'when storing bikes' do
	# 	it 'can receive bikes' do
	# 		#docking station starts with no bikes
	# 		expect(station.bike_count).to eq(0)
	# 		#dock a bike!
	# 		station.dock(bike)
	# 		#increase the stations's bike count
	# 		expect(station.bike_count).to eq(1)
	# 	end

	# 	it 'can release bikes' do
	# 		station.dock(bike)
	# 		station.release(bike)
	# 		expect(station.bike_count).to eq(0)
	# 	end

	# 	it 'knows it is full' do
	# 		expect(station.full?).to eq false
	# 		fill_station station
	# 		expect(station.full?).to eq true
	# 	end

	# 	it 'should not accept a bike when full' do
	# 		fill_station station
	# 		expect(lambda {station.dock(bike)}).to raise_error(RuntimeError)
	# 	end
	# end

	# context 'when renting bikes' do
	# 	it 'should say what bikes are available' do
	# 		working_bike, broken_bike = Bike.new, Bike.new
	# 		working_bike.break!
	# 		station.dock(broken_bike)
	# 		station.dock(working_bike)
	# 		expect(station.available_bikes).to eq([working_bike])
	# 	end
	# end

end
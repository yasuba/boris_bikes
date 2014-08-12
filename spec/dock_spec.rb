require 'dock'

describe DockingStation do
	let(:station) {DockingStation.new(:capacity => 20)}
	let(:bike) {Bike.new}

	context 'when storing bikes' do
		it 'can receive bikes' do
			#docking station starts with no bikes
			expect(station.bike_count).to eq(0)
			#dock a bike!
			station.dock(bike)
			#increase the stations's bike count
			expect(station.bike_count).to eq(1)
		end

		it 'can release bikes' do
			station.dock(bike)
			station.release(bike)
			expect(station.bike_count).to eq(0)
		end

		it 'knows it is full' do
			expect(station.full?).to eq false
			20.times {station.dock(Bike.new)}
			expect(station.full?).to eq true
		end
	end
end
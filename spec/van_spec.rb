require 'van'
require 'bike'
require 'bike_container'

describe Van do
let(:van) {Van.new(:capacity => 10)}
let(:broken_bike) {Bike.new}
let(:bike) {Bike.new}

	it_behaves_like "a BikeContainer"

	it 'picks up broken bikes' do
		van.store(broken_bike)
		expect(van.bike_count).to eq(1)
	end

	it 'should not pick up a bike if full' do
		van.capacity.times { van.store(bike) }
		expect{van.store(bike)}.to raise_error
	end

	it 'knows how many broken bikes it has' do
		broken_bike.break!
		van.store(broken_bike)
		expect(van.broken_bikes.count).to eq (1)
	end


end
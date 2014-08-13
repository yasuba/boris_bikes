require 'van'
require 'bike'

describe Van do
let(:van) {Van.new(:capacity => 10)}
let(:broken_bike) {Bike.new}
let(:bike) {Bike.new}

	it 'picks up broken bikes' do
		# expect(van.bike_count).to eq(0)
		# broken_bike = Bike.new
		van.store(broken_bike)
		expect(van.bike_count).to eq(1)
	end

	xit 'should not pick up a bike if  full' do
		10.times { van.store(bike) }
		expect(van.store(bike)).to raise_error(RuntimeError, "I'm full!")
	end
end
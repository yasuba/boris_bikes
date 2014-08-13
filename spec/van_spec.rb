require 'van'
require 'bike'

describe Van do
let(:van) {Van.new(:capacity => 10)}
let(:broken_bike) {Bike.new}
	it 'picks up broken bikes' do
		# expect(van.bike_count).to eq(0)
		# broken_bike = Bike.new
		van.accept(broken_bike)
		# expect(van.bike_count).to eq(1)
	end

end
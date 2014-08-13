require 'garage'
require 'dock'
require 'van'

describe Garage do
	it 'should accept broken bikes' do
		garage = Garage.new
		working_bike = Bike.new
		expect(garage.accept(working_bike)).to eq([working_bike])
	end

end
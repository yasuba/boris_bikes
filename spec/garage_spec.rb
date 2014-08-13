require 'garage'
require 'dock'
require 'van'

describe Garage do
	it 'should accept broken bikes' do
		garage = Garage.new
		working_bike = Bike.new
		expect(garage.accept(working_bike)).to eq([working_bike])
	end

	it 'should fix broken bikes when it accepts them' do
		garage = Garage.new
		broken_bike = Bike.new
		broken_bike.break!
		garage.accept(broken_bike)
		expect(broken_bike).to be_working
	end

	it 'should not accept working bikes' do
		garage = Garage.new
		working_bike = Bike.new
		expect{ garage.accept(working_bike) }.to raise_error
	end
end
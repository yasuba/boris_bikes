require 'garage'
require 'dock'
require 'van'

describe Garage do

	it_behaves_like "a BikeContainer"

	it 'should accept broken bikes' do
		garage = Garage.new
		working_bike = Bike.new
		working_bike.break!
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

	it 'should return fixed bikes to van' do
		garage = Garage.new
		working_bike = Bike.new
		garage.store(working_bike)
		garage.release(working_bike)
		expect(garage.bike_count).to eq(0)
	end
end
require 'garage'
require 'dock'
require 'van'

describe Garage do

	let(:garage){Garage.new}
	let(:working_bike){Bike.new}
	let(:broken_bike){Bike.new.break!}

	it_behaves_like "a BikeContainer"

	it 'should accept broken bikes' do
		expect(garage.accept(broken_bike)).to eq([broken_bike])
	end

	it 'should fix broken bikes when it accepts them' do
		garage.accept(broken_bike)
		expect(broken_bike).to be_working
	end

	it 'should not accept working bikes' do
		expect{ garage.accept(working_bike) }.to raise_error
	end

	it 'should return fixed bikes to van' do
		garage.store(working_bike)
		garage.release(working_bike)
		expect(garage.bike_count).to eq(0)
	end
end
require 'bike_container'

RSpec.shared_examples "a BikeContainer" do

	let(:bike) {Bike.new}
	let(:broken_bike) {Bike.new.break!}
	let(:bike_container) { described_class.new }

	it 'should accept a bike' do
		expect(bike_container.bike_count).to eq(0)
		bike_container.store(bike)
		expect(bike_container.bike_count).to eq(1)
	end

	def fill_bike_container(bike_container)
		bike_container.capacity.times {bike_container.store(bike)}
	end

	context 'when storing bikes' do
		it 'can receive bikes' do
			expect(bike_container.bike_count).to eq(0)
			bike_container.store(bike)
			expect(bike_container.bike_count).to eq(1)
		end

		it 'can release bikes' do
			bike_container.store(bike)
			bike_container.release(bike)
			expect(bike_container.bike_count).to eq(0)
		end

		it 'knows it is full' do
			expect(bike_container.full?).to eq false
			fill_bike_container(bike_container)
			expect(bike_container.full?).to eq true
		end

		it 'should not accept a bike when full' do
			fill_bike_container bike_container
			expect(lambda {bike_container.store(bike)}).to raise_error
		end
	end

	context 'when releasing bikes' do
		it 'should not release a bike when empty' do
			expect{ bike_container.release(bike) }.to raise_error
		end

		it 'should say what bikes are working' do
			bike_container.store(broken_bike)
			bike_container.store(bike)
			expect(bike_container.available_bikes).to eq([bike])
		end

		it 'should say what bikes are broken' do
			bike_container.store(broken_bike)
			bike_container.store(bike)
			expect(bike_container.broken_bikes).to eq([broken_bike])
		end
	end

	context 'when transferring bikes between containers' do
		it 'the bike released is the same as the bike accepted' do
			bike_container1, bike_container2 = bike_container, bike_container
			bike_container1.store(bike)
			bike_id = bike.object_id
			bike_container1.release(bike)
			bike_container2.store(bike)
			expect(bike_container2.available_bikes.pop.object_id).to eq(bike_id)
		end
	end

end
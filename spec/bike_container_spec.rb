require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

	let(:bike) {Bike.new}
	let(:holder) {ContainerHolder.new}

	it 'should accept a bike' do
		expect(holder.bike_count).to eq(0)
		holder.store(bike)
		expect(holder.bike_count).to eq(1)
	end

	def fill_holder(holder)
		holder.capacity.times {holder.store(Bike.new)}
	end

	context 'when storing bikes' do
		it 'can receive bikes' do
			#storeing holder starts with no bikes
			expect(holder.bike_count).to eq(0)
			#store a bike!
			holder.store(bike)
			#increase the holders's bike count
			expect(holder.bike_count).to eq(1)
		end

		it 'can release bikes' do
			holder.store(bike)
			holder.release(bike)
			expect(holder.bike_count).to eq(0)
		end

		it 'knows it is full' do
			expect(holder.full?).to eq false
			fill_holder(holder)
			expect(holder.full?).to eq true
		end

		it 'should not accept a bike when full' do
			fill_holder holder
			expect(lambda {holder.store(bike)}).to raise_error
		end
	end

	context 'when releasing bikes' do
		it 'should say what bikes are working' do
			working_bike, broken_bike = Bike.new, Bike.new
			broken_bike.break!
			holder.store(broken_bike)
			holder.store(working_bike)
			expect(holder.available_bikes).to eq([working_bike])
		end

		it 'should say what bikes are broken' do
			working_bike, broken_bike = Bike.new, Bike.new
			broken_bike.break!
			holder.store(broken_bike)
			holder.store(working_bike)
			expect(holder.broken_bikes).to eq([broken_bike])
		end
	end

end
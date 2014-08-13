require 'person'

describe Person do

	let(:person){Person.new}
	let(:bike){Bike.new}

	it 'does not have a bike when initialised' do
		expect(person.has_bike?).to eq false
	end

	it 'can have a bike' do
		person.take(bike)
		expect(person.has_bike?).to eq true
	end

	it 'can return a bike' do
		person.take(bike)
		person.return_bike
		expect(person.has_bike?).to eq false
	end

	it 'cannot return a bike when it has no bikes' do
		expect{ person.return_bike }.to raise_error
	end
end

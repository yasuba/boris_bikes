require 'person'

describe Person do

	it 'does not have a bike when initialised' do
		person = Person.new
		expect(person.has_bike?).to eq false
	end

	it 'can have a bike' do
		person = Person.new
		bike = Bike.new
		person.take(bike)
		expect(person.has_bike?).to eq true
	end

	it 'can return a bike' do
		person = Person.new
		bike = Bike.new
		person.take(bike)
		person.return_bike
		expect(person.has_bike?).to eq false
	end

	it 'cannot return a bike when it has no bikes' do
		person = Person.new
		expect{ person.return_bike }.to raise_error
	end
end

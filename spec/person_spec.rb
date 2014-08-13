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
end

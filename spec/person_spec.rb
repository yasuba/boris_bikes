require 'person'

describe Person do
	it 'does not have a bike when initialised' do
		person = Person.new
		expect(person.has_bike?).to eq false
	end
end

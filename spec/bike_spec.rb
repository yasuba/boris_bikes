require 'bike'

describe Bike do

let(:bike) {Bike.new}
context 'when initialized' do

	it 'is working' do
		expect(bike.working?).to eq true
	end

	it 'is broken' do
		bike.break!
		expect(bike.working?).to eq false
	end

	it 'can be fixed' do
		bike.fix!
		expect(bike.working?).to eq true
	end

end

end
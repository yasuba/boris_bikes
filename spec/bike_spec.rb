require 'bike'

describe Bike do

let(:bike) {Bike.new}

  it 'should be able to be broken' do
    bike.break!
    expect(bike.working?).to eq false
  end

  it 'should be able to be fixed' do
    bike.break!
    bike.fix!
    expect(bike).to be_working
  end

  it 'should not be broken when initialized' do
    expect(bike.working?).to eq true
  end

end
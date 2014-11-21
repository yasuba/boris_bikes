require 'bike'

describe Bike do
let(:bike) {Bike.new}

  it 'should be able to be broken' do
    bike.break!
    expect(bike.broken?).to eq true
  end

  it 'should be able to be fixed' do
    bike.break!
    bike.fix!
    expect(bike).not_to be_broken
  end

  it 'should not be broken when initialized' do
    expect(bike.broken?).to eq false
  end
end
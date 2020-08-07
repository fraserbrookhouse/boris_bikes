require 'bike'
describe Bike do
  it { is_expected.to respond_to (:working?) }

  it 'returns true if bikes are working' do
    bike = Bike.new('working')
    expect(bike.working?).to eq true
  end

  it 'returns false if bikes are broken' do
    bike = Bike.new('broken')
    expect(bike.working?).to eq false
  end

  it 'changes status of bike from working to broken' do
    bike = Bike.new
    bike.report('broken')
    expect(bike.working?).to eq false
  end
  
end
require 'boris_bikes'

describe DockingStation do
	it { is_expected.to respond_to (:release_bike) }
  
  it 'release working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  # it { bike = subject.release_bike is_expected.to be_working }

end
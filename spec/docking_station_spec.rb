require 'docking_station'

describe DockingStation do
	
	it { is_expected.to respond_to (:release_bike) }

	describe '#release_bike' do
		it 'releases a bike' do
			bike = Bike.new
			subject.dock(bike)
			expect(subject.release_bike).to eq bike
		end
		
		it 'raises an error when there are no bikes available and you try to release a bike' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
	end
  
	it 'releases working bikes' do
		bike = Bike.new
		subject.dock(bike)
    subject.release_bike
    expect(bike).to be_working
	end

	it "doesn't release broken bikes" do
    bike = Bike.new('broken')
    subject.dock(bike)
    expect { subject.release_bike }.to raise_error 'Available bikes are broken'
  end
	
	describe '#dock' do
		it 'raises an error when the dock is full and you try to dock a bike' do
			DockingStation::DEFAULT_CAPACITY.times do
				subject.dock Bike.new
			end
			expect { subject.dock Bike.new }.to raise_error 'Dock is full'
		end
	end

	it "creates a docking station with capacity default capacity" do 
    station = DockingStation.new
    expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

	it "allows user to tell dock if bike is broken" do
    bike = Bike.new
		subject.dock(bike, 'broken')
    expect(bike.working?).to eq false
	end
	
	it "Docking station with variable capacity" do 
    station = DockingStation.new(30)
    30.times { station.dock Bike.new }
    expect {station.dock Bike.new }.to raise_error "Dock is full"
  end


	it { is_expected.to respond_to(:dock).with(1).argument }

	it 'docks something and returns docked bike' do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.release_bike).to eq bike 
	end
end
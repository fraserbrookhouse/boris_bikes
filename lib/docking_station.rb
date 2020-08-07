require_relative 'bike'

# an object that can take in, and give out bikes to people.
class DockingStation
	DEFAULT_CAPACITY = 20
	attr_accessor :capacity
	def initialize(capacity = DEFAULT_CAPACITY)
		@capacity = capacity
		@available_bikes = []
	end
	#releases bikes
	def release_bike
		fail 'No bikes available' if  self.empty?
		@available_bikes.each do |bike|
      if bike.working?
        @available_bikes.delete(bike)
        return bike
      end
    end
    fail 'Available bikes are broken'  
	end
	#takes in a bike and docks it
	def dock(bike, status = bike.working)
		bike.report(status)
		fail 'Dock is full' if full?
		@available_bikes.append(bike)
	end

	private
	def full?
		if @available_bikes.count >= @capacity
			true
		end
	end

	private
	def empty?
		if @available_bikes.empty?
			true
		else
			false
		end
	end


end

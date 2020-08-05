# an object that can take in, and give out bikes to people.
class DockingStation
	def initialize
		@available_bikes = []
		@dock_capacity = 20
	end
	#releases bikes
	def release_bike
		fail 'No bikes available' if  self.empty?
		@available_bikes.pop()
	end
	#takes in a bike and docks it
	def dock(bike)
		fail 'Dock is full' if self.full?
		@available_bikes.append(bike)
		@available_bikes[@available_bikes.length - 1]
	end
	#returns value of already docked bike
	attr_reader :available_bikes

	private
	def full?
		if @available_bikes.length == @dock_capacity
			true
		else
			false
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

class Bike
	def working?
		true
	end
end
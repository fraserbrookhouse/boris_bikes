# an object that can take in, and give out bikes to people.
class DockingStation
	def initialize
		@available_bikes = []
	end
	#releases bikes
	def release_bike
		fail 'No bikes available' unless @available_bikes.length > 0
		@available_bikes[0]
	end
	#takes in a bike and docks it
	def dock(bike)
		fail 'Dock is full' unless @available_bikes.length < 20 
		@available_bikes.append(bike)
		@available_bikes
	end
	#returns value of already docked bike
	attr_reader :available_bikes

end

class Bike
	def working?
		true
	end
end
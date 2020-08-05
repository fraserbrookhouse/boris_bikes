# an object that can take in, and give out bikes to people.
class DockingStation
	#releases bikes
	def release_bike
		fail 'No bikes available' unless @bike
		@bike
	end
	#takes in a bike and docks it
	def dock(bike)
		fail 'Dock is full' unless !@bike
		@bike = bike
	end
	#returns value of already docked bike
	attr_reader :bike

end

class Bike
	def working?
		true
	end
end
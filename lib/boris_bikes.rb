# an object that can take in, and give out bikes to people.
class DockingStation
	#releases bikes
	def release_bike
		Bike.new
	end
	#takes in a bike and docks it
	def dock(bike)
		@bike = bike
	end
	#gives out an already docked bike
	attr_reader :bike

end

class Bike
	def working?
		true
	end
end
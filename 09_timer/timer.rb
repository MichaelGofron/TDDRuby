class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end
	
	def time_string
		hours = (seconds/3600)%24
		minutes = (seconds/60)%60
		padded(hours) + ":" + padded(minutes) + ":" + padded(seconds%60)		
	end
	
	def padded number
		# add 0 to beginning
		if number.to_s.length > 1
			return number.to_s
		else
			return "0" + number.to_s
		end
	end
end

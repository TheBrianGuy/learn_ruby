class Timer
	attr_accessor :seconds
	def initialize(seconds=0)
		@seconds = seconds
	end

	def time_string
		hours = 0
		minutes = 0
		seconds = @seconds
		if seconds >= 60 * 60
			hours = seconds / 60 / 60
			seconds = seconds - (hours * 60 * 60)	
		end
		if seconds >= 60
			minutes = seconds / 60
			seconds = seconds - minutes * 60	
		end
		the_time = Time.new(Time.now.year, Time.now.month, Time.now.day, hours, minutes, seconds)
		the_time = the_time.strftime('%H:%M:%S')	
	end
end

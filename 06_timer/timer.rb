class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		hours = @seconds / 60 / 60
		minutes = (@seconds - (hours * 60 * 60)) / 60
		seconds = (@seconds - (hours * 60 * 60)) - minutes * 60
		"#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"	
	end	

	def padded(num)
		num = num.to_s
		if (num.length) < 2
			return num = '0' + num
		else
			return num
		end
	end
end

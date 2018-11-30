class Book
	attr_accessor :title

	def title=(new_title)
		conjunctions = %w(after as if or that the who why and of in a an)
		@title = new_title.split.map do |t|
			if conjunctions.include?(t)
				t
			else
				t.capitalize
			end
		end
		@title.first.capitalize!
		@title = @title.join(" ")
	end
end

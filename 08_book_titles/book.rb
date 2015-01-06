class Book
	attr_reader :title
	def title=(new_title)
	words = new_title.split(" ")
		words = [words[0].capitalize] + 
			words[1..-1].map do |word|
				dontCapitalize = ['the','a','an','and','in','of']
				if dontCapitalize.include? word
					word
				else
					word.capitalize
				end
			end
		@title = words.join(" ")
	end
end

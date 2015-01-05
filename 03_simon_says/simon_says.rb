def echo word
	word
end

def shout word
	word.upcase
end

def repeat(word,times = 2)
	([word] * times).join(" ")
end

def start_of_word(word,size)
	word[0..(size-1)]
end

def first_word(word)
	word.split(" ").first
end

# exceptions == the, and, over
def titleize(s)
	s = s.split.map {|x| ((x != "the") && (x != "and") && (x != "over")) ?
			x.capitalize : x}.join(" ")
	s.capitalize # make sure first word is capitalized
end

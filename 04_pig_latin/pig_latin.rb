def translate sentence
# translate sentence that begins with vowel to end in ay
# translate sentence that begins with consonant to reverse then end in ay
# translate two sentences, will want to split up sentences into arrays and map procedure on each individually
sentence = sentence.split(" ")
	sentence.map { |word| translateWord word}.join(" ")
end

def translateWord word
	capitalized = (word.capitalize == word)
	vowels = ['A','E','I','U','Y','a','e','i','u','y']
	consonants = ['B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Z','b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','z',]
	if capitalized
		word = word.downcase
	end
	if word[0..2].include? "qu"
		if word[0..1].include? "qu"
			word << word[0..1]
			word[0..1] = ""
			word << "ay"
			return word
		else
			if consonants.any? {|consonant| consonant == word[0]}
				word << word[0..2]
				word[0..2] = ""
				word << "ay"
				return word	
			end
		end
	end	
	
	if consonants.any? {|consonant| consonant  == word[0]}
		if consonants.any? {|consonant| consonant == word[1]}	
			if consonants.any? {|consonant| consonant == word[2]}
				word << word[0..2]
				word[0..2] = ""
			else
				word << word[0..1]
				word[0..1] = ""	
			end		
		else
			word << word[0]
			word[0] = ""
		end
	end
	if capitalized
		word = word.capitalize
	end
	word << "ay"
end

def translate(words)
	words = words.split()
	translated_words = ''
	for word in words
		pigified_word = ''
		if /[aeiou]/i.match(word[0]).nil? == true and word[1..2] == 'qu'
			shift = word[0]
			pigified_word = word[3..-1] + shift + 'quay '
		elsif word[0..1].downcase == 'qu'
			pigified_word = word[2..-1] + 'quay '
		elsif /[aeiou]/i.match(word[0]).nil? == true and /[aeiou]/i.match(word[1]).nil? == true and
			/[aeiou]/i.match(word[2]).nil? == true
			shift = word[0..2]
			pigified_word = word[3..-1] + shift + 'ay '
		elsif /[aeiou]/i.match(word[0]).nil? == true and /[aeiou]/i.match(word[1]).nil? == true
			shift = word[0..1]
			pigified_word =  word[2..-1] + shift + 'ay '
		elsif /[aeiou]/i.match(word[0]).nil? == false
			pigified_word = word + 'ay '
		else
			shift = word[0] 
			pigified_word = word[1..-1] + shift + 'ay '
		end
		if word[0] == word[0].upcase
			pigified_word = pigified_word.capitalize
		end
		translated_words += pigified_word
	end
	translated_words.strip()
end

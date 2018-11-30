def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, num_times = 2)
	result = word	
	(num_times - 1).times{result += " #{word}"}
	result
end

def start_of_word(word, letter_num = 1)
	word[0..letter_num - 1]
end

def first_word(sentence)
	sentence.split[0]
end

def titleize(words)
	# words.split.map{|w| w.capitalize}.join(' ')}
	protected_words = ['and', 'over', 'the']
	new_words = ''
	for w in words.split do
		if w.length <= 2
			unless (w == 'a' || w == 'i')
				new_words += (w.downcase + ' ')
			else
				new_words += (w + ' ')
			end
		elsif protected_words.include?(w.downcase) == true
			new_words += (w + ' ')
		else
			new_words += (w.capitalize + ' ')
		end
	end
	
	new_words.sub(new_words[0], new_words[0].capitalize).strip
end

puts(titleize('david copperfield'))

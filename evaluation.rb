def good_guess
	@correct_letters << @guess
end

def bad_guess
	@wrong_letters << @guess
end

def word_complete?
	word_so_far = letters_found
	!(word_so_far.include? "_")
end

def tally_full?
	@tally >= @max_tally
end

def draw_screen
	system "clear"
	puts "\n" * 10
	display = letters_found
	puts "> #{display.join(' ')} \n\n"
	puts "#{@max_wrong - @wrong_letters.length} lives left! | Wrong letters: [ #{@wrong_letters.join(' ')} ]\n" unless @wrong_letters.empty?
end

def get_guess
	puts "Please select a letter:"
	guess = gets.chomp.upcase
	unless guess =~ /^[A-Z]$/
		puts "One letter only!"
		guess = get_guess
	end
	if @correct_letters.include?(guess) || @wrong_letters.include?(guess)
		puts "Already tried that letter!"
		guess = get_guess
	end
	return guess
end


class Hangman

	require_relative 'file_io'
	require_relative 'user_io'
	require_relative 'evaluation'
	require_relative 'game_over'

	def initialize
		@word = get_word
		@max_wrong = 10
		@wrong_letters = []
		@correct_letters = []
	end

	def play
		draw_screen
		@guess = get_guess
		if @word.include? @guess
			good_guess
		else
			bad_guess
		end
		draw_screen
		game_over(:win) if word_complete?
		game_over(:lose) if @wrong_letters.length >= @max_wrong
		play
	end

	private

	def letters_found
	letters = @word
	letters_found = []
	letters.each do |letter|
		if @correct_letters.include? letter
			letters_found << letter
		else
			letters_found << "_"
		end
	end
	letters_found
end

end

game = Hangman.new
game.play
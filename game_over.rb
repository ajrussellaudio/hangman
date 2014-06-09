def game_over(status)
	if status == :win
		puts "You win. The word was #{@word.join}."
		exit
	elsif status == :lose
		puts "You lose. The word you were looking for was #{@word.join}."
		exit
	end
end
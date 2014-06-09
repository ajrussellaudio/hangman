def draw_screen
	system "clear"
	letters = @word
	display = []
	letters.each do |letter|
		if @correct_letters.include? letter
			display << letter
		else
			display << "_"
		end
	end
	puts display.join(" ")
end
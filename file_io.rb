def get_word
	words = File.readlines "5desk.txt"
	words.select! { |word| word.chomp.length.between?(5, 12) }
	words.sample.chomp.upcase.split("")
end
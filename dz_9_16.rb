# frozen_string_literal: true

def character_comparison(word)
  puts word[1] == word[3]
end

character_comparison('ruby') # => false
character_comparison('ryby') # => true

# loop do
#   puts 'Enter the word: '
#   word = gets.chomp

#   break if word == 'exit'

#   character_comparison(word)
# end

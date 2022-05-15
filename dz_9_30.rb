# frozen_string_literal: true

def orange_get_spaniel(word)
  puts "#{word[5] + word[1] + word[0] + word[7] + word[6] + word[2..4]}"
end
word = 'апельсин'
orange_get_spaniel(word)

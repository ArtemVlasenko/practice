# frozen_string_literal: true

# TODO: Redo
# When you count words, do not count "-"

def number_of_words(word)
  words = word.split.size
  puts words.to_s
end

puts number_of_words(' glory to - Ukraine ')

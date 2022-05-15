# frozen_string_literal: true

def character_comparison
  word = 'ruby'
  words = [word].map { |number| number[1] == number[3] }
  puts words.to_s
end
character_comparison

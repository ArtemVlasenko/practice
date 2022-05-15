# frozen_string_literal: true
# Дано предложение. Все буквы е в нем заменить буквой и
def replace_letter(word, letter_to_replace, letter_to_replace_on)
  words = word.gsub letter_to_replace, letter_to_replace_on
  puts words
end
word = "беременная"
replace_letter(word, 'е', 'и')

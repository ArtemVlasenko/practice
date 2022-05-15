# frozen_string_literal: true
# Дано предложение. Все буквы е в нем заменить буквой и
def replace_letter
  word = "беременная"
  words = word.gsub /[е]/, "о"
  puts words
end
replace_letter

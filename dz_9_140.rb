# frozen_string_literal: true
# Дан текст. Определить количество цифр в нем
def how_number_of_digits(sentence)
  word = sentence.scan(/[0-9]/).size
  # word = sentence.count([0-9])
  puts word
end
sentence = "а я сейчас покажу откуда на беларусь готовилось нападение 1234"
how_number_of_digits(sentence)

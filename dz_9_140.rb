# frozen_string_literal: true
# Дан текст. Определить количество цифр в нем
def how_number_of_digits
  word = "а я сейчас покажу откуда на беларусь готовилось нападение 1234".scan(/[0-9]/).size
  puts word
end
how_number_of_digits

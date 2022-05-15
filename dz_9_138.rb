# frozen_string_literal: true
# Дан символ. Выяснить, является ли он цифрой
def character_is_a_digit(symbol)
  word = symbol.match?(/\d/)
  puts word
end
symbol = '2'
character_is_a_digit(symbol)

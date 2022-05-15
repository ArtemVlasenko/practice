# frozen_string_literal: true
# Дан символ. Выяснить, является ли он цифрой
def character_is_a_digit
  word = "*".match?(/[0-9]/)
  puts word
end
character_is_a_digit

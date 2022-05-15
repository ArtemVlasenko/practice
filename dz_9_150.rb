# frozen_string_literal: true
# Дан текст. Найти сумму всех имеющихся в нем чисел.
def sum_of_all_numbers
  word = "а я сейчас покажу откуда на беларусь готовилось нападение 11234".scan(/[0-9]/).sum(&:to_i)
  puts word
end
sum_of_all_numbers

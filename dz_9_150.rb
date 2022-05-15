# frozen_string_literal: true
# Дан текст. Найти сумму всех имеющихся в нем чисел.
def sum_of_all_numbers(sentence)
  word = sentence.scan(/[0-9]/).sum(&:to_i)
  puts word
end
sentence = "а я сейчас покажу откуда на беларусь готовилось нападение 11234"
sum_of_all_numbers(sentence)

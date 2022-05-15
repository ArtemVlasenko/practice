# frozen_string_literal: true
# Дан текст. Найти сумму всех имеющихся в нем чисел.
# def swap_words
#   word = "а я сейчас покажу откуда на беларусь готовилось нападение".split[0] << "нападение"


# # words = [word]
# #  words
# puts word

#  end
# swap_words

def reverse_word_order(sentence)
  reversed = []
  sentence.split.each do |word|
    reversed.unshift word
  end
  reversed.join(' ')
end

puts reverse_word_order("а я сейчас покажу откуда на беларусь готовилось нападение")

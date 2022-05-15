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
  # Split sentence to words
  words = sentence.split
  # Option 1:
  # 1. replace elements
  # words[0], words[-1] = words[-1], words[0]

  # Option 2:
  first_word = words[0]
  last_word = words[-1]

  # words[0] = last_word
  # words[-1] = first_word

  words.delete(first_word)
  words.delete(last_word)
  words << first_word
  words.unshift(last_word)
  words.join(' ')
end

puts reverse_word_order("а я сейчас покажу откуда на беларусь готовилось нападение")

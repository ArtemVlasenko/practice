# frozen_string_literal: true

# TODO: Redo
# When you count words, do not count "-"

# Дано предложение. В нем слова разделены одним пробелом
# (начальные и конечные пробелы и символ "-" в предложении отсутствуют).
# Определить количество слов в предложении.

def number_of_offers(word)
  word.split('.').each_with_index do |string, index|
    puts "В #{index + 1} предложении #{string.split(' ').count} слов(а)."
  end
end
word = 'glory to Ukraine, putin fucked up. Second sentence'
number_of_offers(word)

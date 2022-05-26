# frozen_string_literal: true

# TODO: Redo
# When you count words, do not count "-"

# Дано предложение. В нем слова разделены одним пробелом
# (начальные и конечные пробелы и символ "-" в предложении отсутствуют).
# Определить количество слов в предложении.

def number_of_offers(text)
  text.split('.').each_with_index do |sentece, index|
    words_count = sentence.split(' ').count
    sentence_number = index + 1
    puts "В #{sentence_number} предложении #{words_count} слов(а)."
  end
end
text = 'glory to Ukraine, putin fucked up. Second sentence'
number_of_offers(text)

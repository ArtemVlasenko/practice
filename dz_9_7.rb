# frozen_string_literal: true

puts "Количество букв в слове команды: #{'Liverpool'.length}"

def determine_number_of_characters(name)
  puts "Количество букв в слове команды: #{name.size}"
end

word = 'Liverpool'
determine_number_of_characters(word)

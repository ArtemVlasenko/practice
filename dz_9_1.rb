# frozen_string_literal: true

#  запрашивает имя человека и повторяет его на экране

def asks_for_person_and_repeats
  puts('Введите ваше имя: ')
  gets.chomp
end
puts asks_for_person_and_repeats

def asks_for_person_and_repeats_output
  puts('Введите ваше имя: ')
  name = gets.chomp
  puts "Добрый день: #{name}"
end
puts asks_for_person_and_repeats_output

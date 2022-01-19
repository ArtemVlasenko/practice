# frozen_string_literal: true

print('Введите слово: ')
a = gets.chomp.to_sym
if a[0] == a[1]
  puts 'одинаковы'
else
  puts 'не одинаковы'
end
#    a =~ [2-4A-Za-z]
#   puts "Второй символ равен четвертому #{a}"

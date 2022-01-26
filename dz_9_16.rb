# frozen_string_literal: true

print('Введите слово: ')
a = gets.chomp
a.length
if a[1] == a[3]
  puts 'одинаковы'
else
  puts 'не одинаковы'
end
#    a =~ [2-4A-Za-z]
#   puts "Второй символ равен четвертому #{a}"

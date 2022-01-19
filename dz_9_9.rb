# frozen_string_literal: true

print('Введите название фамилии первой: ')
a = gets.chomp.to_s

print('Введите название фамилии второй: ')
b = gets.chomp.to_s

if a > b
  puts 'Первая фамилия длиннее'
else a < b
     puts 'Вторая фамилия длиннее'
end

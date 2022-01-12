# frozen_string_literal: true

print('Введите число для переменной a : ')
a = gets.chomp
print('Введите число для переменной b : ')
b = gets.chomp

(a..b).each do |i|
  puts i
end

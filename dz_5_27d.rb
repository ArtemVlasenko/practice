# frozen_string_literal: true

print('Введите число для переменной a : ')
a = gets.chomp.to_i
print('Введите число для переменной b : ')
b = gets.chomp.to_i

sum = 0
(a..b).each do |i|
  sum += i
end
puts " #{sum}"

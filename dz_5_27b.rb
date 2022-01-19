# frozen_string_literal: true

print('Введите число для переменной a : ')
a = gets.chomp.to_i

sum = 0
(a..500).each do |i|
  sum += i
end
puts sum

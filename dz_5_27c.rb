# frozen_string_literal: true

print('Введите число для переменной b : ')
b = gets.chomp.to_i
sum = 0
(-10..b).each do |i|
  sum += i
end
puts sum

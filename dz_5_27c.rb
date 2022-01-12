# frozen_string_literal: true

print('Введите число для переменной b : ')
b = gets.chomp.to_i

(-10..b).each do |i|
  puts i
end

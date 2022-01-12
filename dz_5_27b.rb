# frozen_string_literal: true

print('Введите число для переменной a : ')
a = gets.chomp.to_i

(a..500).each do |i|
  puts i
end

# frozen_string_literal: true

print('Введите число для переменной a : ')
a = gets.chomp.to_i

print('Введите число для переменной b : ')
b = gets.chomp.to_i

print('Введите число для переменной c : ')
c = gets.chomp.to_i

if (i % c).zero?
  (a..b).each do |i|
    puts i
  end
end

# (a..b).each  |i| (i % c).zero?
#     puts i

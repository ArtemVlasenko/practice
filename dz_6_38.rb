# frozen_string_literal: true

# Дано натуральное число. Определить, сколько раз в нем встречается первая
# цифра

# print('Введите число для переменной n : ')
# n = gets.chomp.to_i
# x = n
# while x > 0
#   a = x % 10
#   x = x / 10
# end

# while n > 0
#   if n % 10
#   n = n / 10
#   x += 1
#   end
#   puts "Цифра #{a} встречается #{x} раз"
# end

# print('Введите число для переменной n : ')
# n = gets.chomp.to_i
# k = n
# l = n
# while l > 0
#   f = l % 10
#   l = l / 10
# end
# while k > 0 do
#   c = k % 10
#   k = k /10
#   if c == f
# puts "В числе #{n},количество цифр равных первой #{p}"
#   end

# end
# не могу сравнить массив с полученніми данніми
print('Введите число для переменной n : ')
n = gets.chomp.to_s

a = n

'n'.chars.each { |char| count += 1 if char == a}
'n'.take_while{|a| a [0]}

puts "В числе #{n},количество цифр равных первой #{a[0]}"

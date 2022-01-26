# frozen_string_literal: true

# Дано натуральное число. Определить, сколько раз в нем встречается первая
# цифра



# 1. Считать строку
print('Введите число для переменной n : ')
number_string = gets.chomp.to_s

# 2. Достать первый символ
first_char = number_string[0]
counter = 0

# 3. Проверить сколько раз но встречается
number_string[1..-1].chars.each do |char|
  if first_char == char
    counter += 1
  end
end

puts "В числе #{number_string},количество цифр равных первой #{first_char}: #{counter}"

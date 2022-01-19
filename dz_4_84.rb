# frozen_string_literal: true

# Даны четыре целых числа. Определить сумму тех из них,
# которые кратны трем. Оператор цикла не использовать.
# print("Введите число 1: ")
# a = gets.chomp()
# print("Введите число 2: ")
# b = gets.chomp()
# print("Введите число 3: ")
# c = gets.chomp()
# print("Введите число 4: ")
# d = gets.chomp()

def number(number_a, number_b, number_c, number_d)
  sum = 0
  sum += number_a if number_a % 3.zero?

  sum += number_b if number_b % 3.zero?

  sum += number_c if number_c % 3.zero?

  sum += number_d if number_d % 3.zero?
  sum
end
puts number(3, 3, 3, 2)

# if  a % 3 == 0
# sum += a
# end

# sum += a if a % 3 == 0

# frozen_string_literal: true

print('Введите число для переменной 1 : ')
number_a = gets.chomp.to_i

print('Введите число для переменной 2 : ')
number_b = gets.chomp.to_i

print('Введите число для переменной 3 : ')
number_c = gets.chomp.to_i

def numbers_multiple_of_three(number_a, number_b, number_c)
  (number_a..number_b).each do |i|
    if (i % number_c).zero?
      puts i
    end
  end
end

numbers_multiple_of_three(number_a, number_b, number_c)

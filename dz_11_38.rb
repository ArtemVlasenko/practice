# frozen_string_literal: true
require 'benchmark'
# Дан массив натуральных чисел. Напечатать:
# а) все элементы массива, являющиеся двузначными числами;
# б) все элементы массива, являющиеся трехзначными числами.

def elements_in_two_digits(array)
  array.select { |el| el >= 10 && el < 100 }
end

puts "Task 1 -> input: #{[1, 2, 3, 4, 5, 10, 99, 101]}  output: #{elements_in_two_digits([1, 2, 3, 4, 5, 10, 99, 101])}"

def elements_in_three_digits(array)
  array.select { |el| el >= 100 && el < 1000 }
end

puts "Task 2 -> input: #{[100, 45, 99, 120, 1000, 50]}  output: #{elements_in_three_digits([100, 45, 99, 120, 1000, 50])}"

def pick_digits(array:, number_of_digits:)
  bottom = 10.pow(number_of_digits - 1)
  top = 10.pow(number_of_digits)

  array.select do |el|
    el >= bottom && el < top
  end
end

input = [100, 45, 99, 120, 1000, 50, 100500]

puts "Task 3 -> input: #{input}  output: #{pick_digits(array: input, number_of_digits: 6)}"

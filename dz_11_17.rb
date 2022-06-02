# frozen_string_literal: true

# Дан массив. Все его элементы:
# а) увеличить в 2 раза;
# б) уменьшить на число А;
# в) разделить на первый элемент.

require 'pry'

def increase_array(array)
  array.map { |n| n * 2 }
end
puts "Task 1 -> input: #{[1, 2, 3, 4, 5, 10]}  output: #{increase_array([1, 2, 3, 4, 5, 10])}"

def decrise_array(array, number)
  array.map { |el| el - number }
end
puts "Task 2: input: #{[1, 2, 3, 4, 5, 10]} output: #{decrise_array([1, 2, 3, 4, 5, 10], 2)}, A: #{2}"

def divide_array(array)
  array.map { |el| el / array[0].to_f }
end
elem = [2, 2, 3, 4, 5, 10]
puts "Task 3: input: #{elem} output: #{divide_array(elem)}"

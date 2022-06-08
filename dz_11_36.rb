# frozen_string_literal: true

# Дан массив. Напечатать:
# а) все неотрицательные элементы;
# б) все элементы, не превышающие число 100.

def type_all_non_negative_elements(array)
  array.select(&:positive?)
  # array.select{ |el| el >= 0 }
end
puts "Task 1 -> input: #{[1, -2, 3, 4, 5, -10]}  output: #{type_all_non_negative_elements([1, -2, 3, 4, 5, -10])}"

def print_elements_up_to_100(array)
  array.select { |el| el < 100 }
end
puts "Task 2 -> input: #{[1, 45, 99, 120, 1000, 50]}  output: #{print_elements_up_to_100([1, 45, 99, 120, 1000, 50])}"

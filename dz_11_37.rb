# frozen_string_literal: true

# Дан массив целых чисел. Напечатать:
# а) все четные элементы;
# б) все элементы, оканчивающиеся нулем.

def type_all_even_elements(array)
  array.select(&:even?)
end
puts "Task 1 -> input: #{[1, 2, 3, 4, 5, 10]}  output: #{type_all_even_elements([1, 2, 3, 4, 5, 10])}"

def last_element_is_zero(array)
  array.select { |el| (el % 10).zero? }
end
puts "Task 2 -> input: #{[100, 45, 99, 120, 1000, 50]}  output: #{last_element_is_zero([100, 45, 99, 120, 1000, 50])}"

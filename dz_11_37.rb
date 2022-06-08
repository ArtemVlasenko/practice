# frozen_string_literal: true

# Дан массив целых чисел. Напечатать:
# а) все четные элементы;
# б) все элементы, оканчивающиеся нулем.

def type_all_even_elements(array)
  array.select(&:even?)
end

input_one = [1, 2, 3, 4, 5, 10]
puts "Task 1 -> input: #{input_one}  output: #{type_all_even_elements(input_one)}"

def last_element_is_zero(array)
  array.select { |el| (el % 10).zero? }
end

input_two = [100, 45, 99, 120, 1000, 50]
puts "Task 2 -> input: #{input_two}  output: #{last_element_is_zero(input_two)}"

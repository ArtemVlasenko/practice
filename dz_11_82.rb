# frozen_string_literal: true

# Найти среднее арифметическое элементов массива, больших числа 10.

def replace_values_ten_with_zero(array)
  array.select { |el| el >= 10 }.sum.fdiv(array.size)
end
puts "Task 1 -> input: #{[1, 2, 3, 4, 5, 10, 20]}  output: #{replace_values_ten_with_zero([1, 2, 3, 4, 5, 10, 20])}"
# inject { |sum, el| sum + el }.to_f / array.size

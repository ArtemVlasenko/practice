# frozen_string_literal: true

# Дан массив целых чисел.
# а) Все элементы, кратные числу 10, заменить нулем.
# б) Все нечетные элементы удвоить, а четные уменьшить вдвое.
# в) Нечетные элементы уменьшить на m, а элементы с нечетными номерами
# увеличить на n.

def replace_values_ten_with_zero(array)
  array.select { |el| el >= 10 && el < 100 }.map { |elem| elem = 0 }
end
puts "Task 1 -> input: #{[11, 23, 3, 4, 5, 10, 21]}  output: #{replace_values_ten_with_zero([11, 23, 3, 4, 5, 10, 21])}"

# def odd_double_and_even_halve(array)

#   array.select{ |l| l.odd? }.map {|m| m * 2}
#   array.select{ |el| el.even? }.map {|elem| elem / 2}

# end

# puts "Task 2 -> input: #{[100, 45, 99, 120, 1000, 50]}  #{odd_double_and_even_halve([100, 45, 99, 120, 1000, 50])}"


def elements_decrease_by_m(array, number)
  array.select(&:odd?).map { |el_tho| el_tho - number }
end
puts "Task 3 -> input: #{[100, 45, 99, 120, 1000, 50]} = #{elements_decrease_by_m([100, 45, 99, 120, 1000, 50], 2)}, m: #{2}"


def odd_numbers_increase_by_n(array, number)
  array.select(&:even?).map { |el_tho| el_tho + number }
end
puts "Task 3.1 -> input: #{[100, 45, 99, 120, 1000, 50]} = #{odd_numbers_increase_by_n([100, 45, 99, 120, 1000, 50], 2)}, n: #{2}"

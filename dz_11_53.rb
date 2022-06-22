# frozen_string_literal: true

# Дан массив целых чисел.
# а) Все элементы, кратныvе числу 10, заменить нулем.
# б) Все нечетные элементы удвоить, а четные уменьшить вдвое.
# в) Нечетные элементы уменьшить на m, а элементы с нечетными номерами
# увеличить на n.

#Дан массив целых чисел. [11, 23, 3, 4, 5, 10, 21] Все элементы, кратныvе числу 10, заменить нулем. [11, 23, 3, 4, 5, 0, 21]

# TODO: переделать, select тут не подходит, метод должен принять массив и отдать массив с замененными элементами
def replace_values_even_with_zero(array)
  array.map do |el|
    el % 10 == 0 ? 0 : el
  end
end
replace_values_even_with_zero([10, 100, 3, 4, 5, 10, 21])
puts "Task 1 -> input: #{[10, 20, 3, 4, 5, 10, 21]}  output: #{replace_values_even_with_zero([10, 100, 3, 4, 5, 10, 21])}"


# TODO: переделать
def odd_double_and_even_halve(array)
  array.map { |x| x.even? ? x / 2 : x * 2 }
end
odd_double_and_even_halve([100, 45, 99, 120, 1000, 50])
puts "Task 2 -> input: #{[100, 45, 99, 120,1000, 50]} output: #{odd_double_and_even_halve([100, 45, 99, 120, 1000, 50]) }"


def elements_decrease_by_m_n(array, m, n)
  array.map { |x| x.even? ? x - m : x + n }
end
  # {"elements_decrease_by_m([100, 45, 99, 120, 1000, 50])}, "
puts "Task 3 -> input: #{[100, 45, 99, 120, 1000, 50]} output: #{elements_decrease_by_m_n([100, 45, 99, 120, 1000, 50], 2, 10)}, m: #{2}, n: #{10} "




# # TODO: переделать
# def elements_decrease_by_m(array, number)
#   array.map do |el|
#     if el.odd?
#       puts "нечетные элементы уменьшить на m  #{el - number}"
#     else el.even?
#       puts "четными номерами увеличить на n = #{el + number}"
#     end
#   end
# end
# elements_decrease_by_m([100, 45, 99, 120, 1000, 50], 2) #{elements_decrease_by_m([100, 45, 99, 120, 1000, 50], 2)}, m: #{2}"

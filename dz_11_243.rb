# frozen_string_literal: true

# Дан массив из 20 элементов. Сформировать два массива размером 10,
# включив в первый из них элементы заданного массива с четными индексами,
# а во второй — с нечетными.

array = [3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4]

def two_arrays_even_and_odd_elements(array)
  array.group_by.with_index do |x, i|
    i.even?
  end.values
end
puts two_arrays_even_and_odd_elements(array).inspect


# group_by - возвращаемый объект будет хешем

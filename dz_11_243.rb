# frozen_string_literal: true

# Дан массив из 20 элементов. Сформировать два массива размером 10,
# включив в первый из них элементы заданного массива с четными индексами,
# а во второй — с нечетными.

array = [100, 2, 2, 3, 4, 3, 4, 10, 11, 15, 20, 25, 30, 35, 45, 55, 55, 55, 55, 45]

def two_arrays_even_and_odd_elements(array)

  # array.group_by.with_index { |x, i| x % 2  }.values
  array.partition{ |i| i[0].zero? }

end
print two_arrays_even_and_odd_elements(array)


# group_by - возвращаемый объект будет хешем

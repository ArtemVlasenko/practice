# frozen_string_literal: true

# Дан массив из 20 элементов.
# Найти пять соседних элементов,
# сумма значений которых максимальна.

array = [100, 2, 2, 3, 4, 3, 4, 10, 11, 15, 20, 25, 30, 35, 45, 55, 55, 55, 55, 45]

def find_five_neighboring_elements_max(array)
  start = 0
  finish = 4
  hash = {}
# Пока finish меньше размера массива делать подсчет

  while finish <= array.size - 1
    sum = array[start..finish].sum
    hash[array[start..finish]] = sum
    finish += 1
    start += 1
  end

  max_sum = hash.values.max
  hash.select do |key, value|
    value == max_sum
  end
end

find_five_neighboring_elements_max(array).each do |key, value|
  puts "for such neighbours #{key} - max sum #{value}"
end

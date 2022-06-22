# frozen_string_literal: true

# Дан массив из 20 элементов.
# Найти пять соседних элементов,
# сумма значений которых максимальна.

# GROWTH_RECORDED =  [1, 2, 2, 3, 4, 3, 4, 10, 11, 15, 20, 25, 30, 35, 25, 35, 45, 55, 85, 95]
array = [100, 2, 2, 3, 4, 3, 4, 10, 11, 15, 20, 25, 30, 35, 25, 35, 45, 55, 85, 95]
# def find_five_neighboring_elements_max(array)
#   array.inject(Hash.new{ 0 }){ |result, i|
#     result[i] += 1
#     result
#      }
# end
# puts "Task 1 -> input: #{GROWTH_RECORDED}  output: #{find_five_neighboring_elements_max(GROWTH_RECORDED)}"
#  GROWTH_RECORDED =  [1, 2, 2, 3, 4, 3, 4, 10, 11, 15, 20, 25, 30, 35, 25, 35, 45, 55, 85, 95]

def find_five_neighboring_elements_max(array)
start = 0
finish = 4
hash = {}
# Пока finish меньше размера массива делать подсчет

  # array.select do |i|

  while finish <= array.size-1
    g = array[start..finish].sum
      puts "#{g}"
  finish += 1
  start += 1
  end
  hash = { array[start..finish] => array }
# while
# end

end
puts "#{find_five_neighboring_elements_max(array)}"

# {
#   [1,2,3,4,5] => 15,
# }


  # puts "Input: #{}. Max sum #{} for such elements: #{}"

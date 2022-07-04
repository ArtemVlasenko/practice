# frozen_string_literal: true

# Известна температура воздуха в каждый из дней июля. Определить, какие
# из семи следующих подряд дней являлись самыми теплыми.


array = [35, 40, 35, 35, 35, 35, 35, 35, 31, 31, 30, 35, 30, 35, 35, 35, 35, 35, 35, 35]

def find_seven_consecutive_day_max(array)
  start = 0
  finish = 6
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

find_seven_consecutive_day_max(array).each do |key, value|
  puts "hottest seven days in july #{key} "
end

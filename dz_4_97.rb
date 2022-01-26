# frozen_string_literal: true

def max_number(number1, number2, number3)
  # if number1 > number2 && number1 > number3
  #   number1
  # elsif number2 > number3 && number2 > number1
  #   number2
  # else
  #   number3
  # end

  [number1, number2, number3].max
end

puts "Наибольшее число : #{max_number(400, 200, 300)}"

def min_number(number1, number2, number3)
  # if number1 < number2 && number1 < number3
  #   number1
  # elsif number2 < number3 && number2 < number1
  #   number2
  # else
  #   number3
  # end

  [number1, number2, number3].min
end

puts "Наименьшее число : #{min_number(10, 5, 1)}"

def average_number(number1, number2, number3)
  # if number1.between?(number2, number3)
  #    number1
  # elsif number2.between?(number1, number3)
  #    number2
  # elsif  number3.between?(number2, number1)
  #    number3
  # end
  array = [number1, number2, number3]

  max = max_number(*array)
  min = min_number(*array)
  # [151, 150, 200] - [150, 200] => [151]
  (array - [max, min]).first
end

puts "Среднее число : #{average_number(151, 150, 200)}"

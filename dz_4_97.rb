# frozen_string_literal: true

def max_number(number1, number2, number3)
  if number1 >= number2 && number1 >= number3
    puts "Наибольшее число : #{number1}"
  elsif number2 >= number3 && number2 >= number1
    puts "Наибольшее число : #{number2}"
  else
    puts "Наибольшее число : #{number3}"
  end
end
puts max_number(400, 200, 300)

# def min_number(number1, number2, number3)
#   if number1 <= number2 && number1 <= number3
#     puts "Наименьшее число : #{number1}"
#   elsif number2 <= number3 && number2 <= number1
#     puts "Наименьшее число : #{number2}"
#   else
#     puts "Наименьшее число : #{number3}"
#   end
# end
# puts min_number(10, 5, 1)
# def average_number(number1, number2, number3)
#   if number1.between?(number2, number3)
#     puts "Среднее число : #{number1}"
#   elsif number2.between?(number1, number3)
#     puts "Среднее число : #{number2}"
#   elsif  number3.between?(number2, number1)
#     puts "Среднее число : #{number3}"
#   end
# end
# puts average_number(151, 150, 200)

# puts "Среднее число: #{average_number(1, 2, 3)}"

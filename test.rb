# frozen_string_literal: true


# print('Введите число для переменной n: ')
#   n = gets.chomp. to_i

# for number in 1..9

#   puts "#{n} * #{number} = #{number * n }"
# end


# i = 0
# loop do
#   i = i + 2
#   if i == 4
#     next        # skip rest of the code in this iteration
#   end
#   puts i
#   if i == 10
#     break
#   end
# end

# print('Введите свое имя: ')
#    n = gets.chomp. to_i

def average_number(number1, number2, number3)

  if number1.between?(number2, number3)
#     puts "Среднее число : #{number1}"
#   elsif number2.between?(number1, number3)
#     puts "Среднее число : #{number2}"
#   else number3.between?(number2, number1)
#     puts "Среднее число : #{number3}"
  end
end
puts "Среднее число: #{average_number(1, 2, 3)}"

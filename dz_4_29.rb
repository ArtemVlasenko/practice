# frozen_string_literal: true

def three_numbers(number)
  # print('Введите число n: ')
  # number = gets.chomp.to_i
  square  = number ** 2

  a = number % 10  #нашли   3 - цифру
  b = number / 10 % 10  #нашли 2-ю цифру
  c = number / 10  #нашли 1 - ю цифру
  sum = (a**3 + b**3 + c**3)

  if sum == square
    puts "Равен"
  else sum != square
    puts "Квадрат этого числа не равен сумме кубов его цифр"
end
end
puts three_numbers(333)
# 3**3 + 3**3 + 3**3

# 333**2 - квадрат числа
# # не решил



# Дано трехзначное число.
# Определить, равен ли квадрат этого числа сумме кубов его цифр.

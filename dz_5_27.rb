# frozen_string_literal: true

# . Найти:
# а) сумму всех целых чисел от 100 до 500;
# б) сумму всех целых чисел от a до 500 (значение a вводится с клавиатуры;
# a 500);
# в) сумму всех целых чисел от –10 до b (значение b вводится с клавиатуры;
# b –10);
# г) сумму всех целых чисел от a до b (значения a и b вводятся с клавиатуры;
# b a).

ERROR_MESSAGE = 'Первое число не может быть больше второго'

print('Введите число для переменной a : ')
a = gets.chomp.to_i
print('Введите число для переменной b : ')
b = gets.chomp.to_i

def sum_range(a, b)
  raise ArgumentError, ERROR_MESSAGE if a > b

  sum = 0
  (a..b).each do |i|
    sum += i
  end
  sum
end

begin
  puts sum_range(a, b)
rescue ArgumentError => exception
  puts "ОШИБКА: #{exception.message}"
end

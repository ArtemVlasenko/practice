# frozen_string_literal: true

ERROR_MESSAGE = 'Первое число не может быть больше второго'

print('Введите число для переменной a : ')
a = gets.chomp.to_i

def sum_from_to(from, to = 500)
  raise ArgumentError, ERROR_MESSAGE if to < from

  sum = 0

  (from..to).each do |i|
    sum += i
  end

  sum
end

begin
  puts sum_from_to(a, 500)
rescue ArgumentError => exception
  puts "ОШИБКА: #{exception.message}"
end

# frozen_string_literal: true

def unit_count(number)
  number % 10
end

def decade_count(number)
  number % 100 / 10
end

def sum_of_digits(number)
  (number / 100) + decade_count(number) + unit_count(number)
end

def digits_multiply(number)
  (number / 100) * decade_count(number) * unit_count(number)
end

print("Введите число n: ")
number = gets.chomp().to_i

puts "Дано трехзначное число: #{number}"
puts "#{unit_count(number)} число единиц в нем"
puts "#{decade_count(number)} числа десятков в нем"
puts "#{sum_of_digits(number)} сумма его цифр"
puts "#{digits_multiply(number)} произведение его цифр"

# . Дано трехзначное число. Найти:
# а) число единиц в нем;
# б) число десятков в нем;
# в) сумму его цифр;
# г) произведение его цифр.

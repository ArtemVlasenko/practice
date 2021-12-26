# frozen_string_literal: true

def decade_count(number)
  number / 10
end

def unit_count(number)
  number % 10
end

def sum_of_digits(number)
  decade_count(number) + unit_count(number)
end

def digits_multiply(number)
  decade_count(number) * unit_count(number)
end

print('Введите число n: ')
number = gets.chomp.to_i

puts "Дано двузначное число: #{number}"
puts "#{decade_count(number)} числа десятков в нем"
puts "#{unit_count(number)} число единиц в нем"
puts "#{sum_of_digits(number)} сумма его цифр"
puts "#{digits_multiply(number)} произведение его цифр"

# n=49
# Десятков- 4
# Единиц- 9
# Сумма цифр- 13
# Произведение цифр- 36

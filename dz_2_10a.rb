# frozen_string_literal: true

def decade_count(n)
  a = n / 10
end

def unit_count(n)
  b = n % 10
end

def sum_of_digits(n)
  z = (n / 10) + (n % 10)
end

def digits_multiply(n)
  d = (n / 10) * (n % 10)
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

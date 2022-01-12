# frozen_string_literal: true

def summa(number)
  # print('Введите число n: ')
  # number = gets.chomp()
  a = number / 1000
  puts "a: #{a}"
  b = (number / 100) % 10
  puts "b: #{b}"
  c = (number % 100) / 10
  puts "c: #{c}"
  d = number % 10
  puts "d: #{d}"
  sum = a * b * c * d

  print('Введите число n: ')
  number = gets.chomp

  if (sum % 4) = 0
    puts 'Произведение всех цифр кратно, 4'
  els
    puts 'Произведение цифр не кратно, 4'
  end
end
puts summa(3333)

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

  if (sum % a) = 0
    puts 'Произведение всех цифр кратно, a'
  els
    puts 'Произведение всех цифр не кратно, a'
  end
end
puts summa(3334)

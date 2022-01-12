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
  sum = a + b + c + d

  if sum % 3 = 0
    puts 'кратна трем'
  els puts 'не кратна трем'
  end
end
puts summa(3333)
# def summa(x)
#      x = a + b + c + d
#      if x % 3 = 0
#      else
#        puts ("Сумма цифр не кратна 3")
#      end
#    end

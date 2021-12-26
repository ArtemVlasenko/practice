def unit_count(n)
  b = n % 10 # REDO
end

def decade_count(n)
  a = (n % 100 / 10)
end

def sum_of_digits(n)
  z = (n / 100) + (n % 10) + (n % 10) # REDO
end

def digits_multiply(n)
   d = (n / 100) * (n % 100 / 10) *(n % 10)   # REDO
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

def decade_count(n)
  n / 10
end

def unit_count(n)
  n / 1 # REDO
end

def sum_of_digits(n)
  # REDO
end

def digits_multiply(n)
  # REDO
end

print("Введите число n: ")
number = gets.chomp().to_i

puts "Дано двузначное число: #{number}"
puts "#{decade_count(number)} числа десятков в нем"
puts "#{unit_count(number)} число единиц в нем"
puts "#{sum_of_digits(number)} сумма его цифр"
puts "#{digits_multiply(number)} произведение его цифр"

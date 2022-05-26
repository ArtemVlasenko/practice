# frozen_string_literal: true

# Написать рекурсивную функцию для вычисления факториала натурального
# числа n.

def factorial(num)
	num == 1 ? 1 : num * factorial(num-1)
end

print "Enter number: "
num = gets.chomp.to_i

fact = factorial(num)

puts "Factorial is: ",fact

# frozen_string_literal: true

# Написать рекурсивную функцию для вычисления факториала натурального
# числа n.

def factorial(num)
	if num == 1
		return 1
	else
		return num * factorial(num-1)
	end
end

print "Enter number: "
num = gets.chomp.to_i

fact = factorial(num)

puts "Factorial is: ",fact

# frozen_string_literal: true

print('Введите число для переменной n: ')
n = gets.chomp.to_i

(1..9).each do |i|
  puts "#{n} * #{i} = #{i * n}"
end

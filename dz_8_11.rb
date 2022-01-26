# frozen_string_literal: true



print('Введите зарпалату 1-ю работника за  месяц: ')
month_one = gets.chomp.to_i
print('Введите зарплату 2-ю работника за  месяц: ')
month_two = gets.chomp.to_i
print('Введите зарплату 3-ю работника за  месяц: ')
month_three = gets.chomp.to_i


(0..11).each do |x|
  x += 1
# puts "Зарплата 1 рабочего за год #{month_one} = #{worker_one}"
end
puts "Зарплата 1-я, рабочего за квартал: #{month_one *3}"

(0..11).each do |y|
  y += 1
# puts "Зарплата 1 рабочего за месяц #{month_two} = #{worker_two}"
end
puts "Зарплата 2-я, рабочего за квартал: #{month_two *3}"

(0..11).each do |z|
  z += 1
# puts "Зарплата 1 рабочего за месяц #{month_three} = #{worker_three}"
end
puts "Зарплата 3-я, рабочего за квартал: #{month_three *3}"

summa = month_one + month_two + month_three

puts "общая зарплата всех работников за квартал #{summa}"
# puts "общая суммa выплаченнaя за квартал всем работникам: #{summa * 3}"









# for i  in [1..12]
# s3 = s3 + i
# puts "Зарплата 3 рабочего за квартал: #{s3}"
# s = s1+s2+s3;
# mes1=one[1]+two[1]+three[1]
# mes2=one[2]+two[2]+three[2]
# mes3=one[3]+two[3]+three[3]
# puts "Общая сумма зарплат:  #{s}"
# puts "Зарплата всех работников за 1 месяц: #{mes1}"
# puts "Зарплата всех работников за 2 месяц: #{mes2}"
# puts "Зарплата всех работников за 3 месяц:  #{mes3}"
# end

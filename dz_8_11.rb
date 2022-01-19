# frozen_string_literal: true



print('Введите зарпалату 1 работника за  месяц: ')
i = gets.chomp
print('Введите зарплату 2 работника за  месяц: ')
i = gets.chomp
print('Введите зарплату 3 работника за  месяц: ')
i = gets.chomp

# one = [1..12]
# two = [1..12]
# three = [1..12]
s1 = 0
s2 = 0
s3 = 0
for i  in [1..12] do
s1 = s1 + i
puts "Зарплата 1 рабочего за квартал #{s1}"
end

for i  in [1..12]
s2 = s2 + i
puts "Зарплата 2 рабочего за квартал: #{s2}"
end
for i  in [1..12]
s3 = s3 + i
puts "Зарплата 3 рабочего за квартал: #{s3}"
s = s1+s2+s3;
mes1=one[1]+two[1]+three[1]
mes2=one[2]+two[2]+three[2]
mes3=one[3]+two[3]+three[3]
puts "Общая сумма зарплат:  #{s}"
puts "Зарплата всех работников за 1 месяц: #{mes1}"
puts "Зарплата всех работников за 2 месяц: #{mes2}"
puts "Зарплата всех работников за 3 месяц:  #{mes3}"
end

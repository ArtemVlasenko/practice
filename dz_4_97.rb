# Даны три различных целых числа. Определить, какое из них (первое, второе
#   или третье):
#   а) самое большое;
#   б) самое маленькое;
#   в) является средним (средним назовем число, которое больше наименьшего из
#   данных чисел, но меньше наибольшего).

#   # print("Введите число: ")
#   # nomber = gets.chomp()
#   # print("Введите число: ")
#   # a2 = gets.chomp()
#   # print("Введите число: ")
#   # a3 = gets.chomp()

def nomber(a1, a2, a3)

  puts if (a2 > a1) && (a1 > a3) || (a3 > a1) && (a1 > a2)
  puts 'Среднее число первое a1'

  puts if (a1 > a2) && (a2 > a3) || (a3 > a2) && (a2 > a1)
  puts 'Среднее число второе a2'

  puts if (a1 > a3) && (a3 > a2) || (a2 > a3) && (a3 > a1)
  puts 'Среднее число третье a3'

  puts if (a1 && a2) || (a1 && a3) || (a2 && a3)
  puts 'Определить среднее число нельзя т.к. есть одинаковые цифры'
end
puts nomber(4, 7, 2)
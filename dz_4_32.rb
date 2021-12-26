# frozen_string_literal: true

def summa(x,a,b,c,d)
a = x / 1000
b = (x / 1000) % 10
c = (x / 10) % 10
d = x % 10
if a + b = c + d
  puts "Сумма первых двух цифр равна сумме последних двух цифер"
else
  puts "Сумма первых двух цифр не равна сумме последних двух цифер"
 end
end


# Переменная number — для заданного числа
# Переменная sum1 — для суммы первых двух чисел
# Переменная sum2 — для суммы вторых двух чисел
# Переменная res — для ответа

# sum1 := (number / 1000) + sum1;
# sum1 := (number / 100) % 10 + sum1;
# sum2 := (number % 10) + sum2;
# sum2 := (number % 100) / 10 + sum2;

def summa(x, a, b, c, d)
  x = a + b + c + d
  if x % 3 = 0
  else
    puts ("Сумма цифр не кратна 3")
  end
end

def proi(x, a, b, c, d)
  x = a * b * c * d
  if x % 4 = 0
  else
    puts ("Произведение всех цифр не кратно 4")
  end
end

# не доделал:
# г) кратно ли произведение его цифр числу а.

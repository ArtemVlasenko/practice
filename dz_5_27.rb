# frozen_string_literal: true

# . Найти:
# а) сумму всех целых чисел от 100 до 500;
# б) сумму всех целых чисел от a до 500 (значение a вводится с клавиатуры;
# a 500);
# в) сумму всех целых чисел от –10 до b (значение b вводится с клавиатуры;
# b –10);
# г) сумму всех целых чисел от a до b (значения a и b вводятся с клавиатуры;
# b a).

(100..500).each do |i|
  puts i
end
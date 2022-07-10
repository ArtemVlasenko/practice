# frozen_string_literal: true

# Имеется файл с целыми числами. Все четные числа записать в другой файл.
# Размер заданного файла неизвестен.

file = File.open("input.txt", "r").read.split(",").map(&:to_i).select{ |number| number.even?}
  puts file
File.write("output.txt",file.join(","))

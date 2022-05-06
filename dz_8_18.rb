require_relative 'helper'
require 'pry'

FILE_PATH = 'dz_8_18.csv'

#  Create file with test data
# save_to_file(
#   generate_test_data(11, 4),
#   FILE_PATH
# )
def main
  table = read_data(FILE_PATH)

  how_small_class = small_class(table)
  puts "в самом малочисленном классе учеников учится: #{how_small_class} "

  minimum_total = minimum_total(table)
  puts "минимальное значение общего количества учеников, учащихся в классах одной параллели: #{minimum_total}"

  minimum_value = minimum_value_classes_A_B_C_D(table)
  puts "минимальное значение учеников, учащихся в классах А,Б,В,Г: #{minimum_value} "
end

# сколько учеников учится в самом малочисленном классе школы
def small_class(table)
  array = table.transpose[1..4]

  array.map do |row|
    row.map(&:to_i).min
  end.min
end

# минимальное значение общего количества учеников,
# учащихся в классах одной параллели
def minimum_total(table)
  array = prepare_table(table)
  array.map do |row|
    row[1].sum
  end.min
end

# минимальное значение общего количества учеников,
# учащихся в классах А,Б, В и Г.
def minimum_value_classes_A_B_C_D(table)
  array = table.transpose[1..4]
  array.each_with_index.map do |row, index|
    row.map(&:to_i).sum
  end.min
end

def prepare_table(table)
  table.map { |row| [row[0], row[1..4].map(&:to_i)] }
end

main

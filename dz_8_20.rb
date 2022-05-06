require_relative 'helper'
require 'pry'

FILE_PATH = 'dz_8_20.csv'

# Create file with test data
# save_to_file(
#   generate_test_data(3, 10),
#   FILE_PATH
# )
def main
  table = read_data(FILE_PATH)

  the_maximum_income_10_days = maximum_income_10_days(table)
  puts "максимальный  доход за 10 дней: #{the_maximum_income_10_days} "

  number, number_two = maximum_total_day(table)
  puts "максимальный общий доход #{number} числа; #{number_two}$ "

  number, number_two, number_three = which_store_date_max(table)
  puts "максимальный доход получил: #{number} числа;  #{number_two}$;  #{number_three} магазин "
end

# какой из магазинов получил максимальный общий доход за 10 дней

def maximum_income_10_days(table)
  array = table.map { |row| [row[0], row[1..10].map(&:to_i)] }
  array.each_with_index.map do |row, index| row[1].sum
  end.max { |a, b| a[1] <=> b[1] }
end

# какого числа фирма получила максимальный общий доход

def maximum_total_day(table)
  array = table.transpose[1..10]
  array.each_with_index.map do |row, index|
    [index + 1, row.map(&:to_i).sum]
  end.max { |a, b| a[1] <=> b[1] }
end

def which_store_date_max(table)
  array = table.transpose[1..10]
  array.each_with_index.map do |row, index|
    [
      index + 1,
      row.map(&:to_i).max,
      row.index(row.map(&:to_i).max.to_s) + 1
    ]
  end.max { |a, b| a[1] <=> b[1] }
end

main

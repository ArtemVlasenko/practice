require_relative 'helper'
require 'pry'

FILE_PATH = 'dz_8_19.csv'

# Create file with test data
# save_to_file(
#   generate_test_data(11, 4),
#   FILE_PATH
# )
def main
  table = read_data(FILE_PATH)

  the_minimum_value_in_parallel = minimum_value_in_parallel(table)
  print_minimum_value_in_parallel(the_minimum_value_in_parallel)

  the_minimum_value_among_classes = minimum_value_among_classes(table)
  print_minimum_value_among_classes(the_minimum_value_among_classes)
end

def minimum_value_in_parallel(table)
  table.map do |row|
    [
      row[0],
      row[1..4].map(&:to_i).min
    ]
  end
end

def print_minimum_value_in_parallel(the_minimum_value_in_parallel)
  the_minimum_value_in_parallel.each do |number|
    puts "минимальное значение в параллели  #{number[0]} = #{number[1]}"
  end
end

def minimum_value_among_classes(table)
  array = table.transpose[1..4]
  array.each_with_index.map do |row, index|
    [index + 1, row.map(&:to_i).min]
  end
end

def print_minimum_value_among_classes(the_minimum_value_among_classes)
  the_minimum_value_among_classes.each do |number|
    puts "минимальное значение среди классов: #{number[0]} = #{number[1]}"
  end
end

main

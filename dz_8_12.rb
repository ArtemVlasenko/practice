require_relative 'helper'
require 'pry'


FILE_PATH = 'dz_8_12.csv'

# Create file with test data
# save_to_file(
#   generate_test_data(15, 3),
#   FILE_PATH
# )

def main
  table = read_data(FILE_PATH)
  a = test(table)
end

def test_one(table)
  new_table_one = test_one.map { |row| [row[0], row[1..3].map(&:to_f).sum / 3] }

  new_table_one.each do |x|
    puts " зарплата, полученная за квартал  работником № #{x[0]} = #{x[1]}"
  end
end

def test(table)
# binding.pry
  new_table = table.map { |row| [row[0], row[1..3].map(&:to_f)] }

  new_table.each_with_index do |row_one, index|
    next if index == 0

    puts " зарплата, полученная за квартал  работником № #{index} = #{row_one[1..3]} "
  end
end



main




# new_table = table.map do |row|
#   #   row.map do |item|
#   #     item.to_f.sum
#   #   end
#   # end
#   # table_one = new_table[1..3].sum / 3

#   # new_table = table.map do |row|
#   #   [row[0]] + row[1..3].map do |el|
#   #     el.to_f
#   #   end
#   # end
#   # new_table = 0
#   # new_table.map { |row| [row[0], row[1..3].sum]  }
#   # new_table.map do |row|
#   #   sum = 0
#   #   [
#   #     row[0],
#   #     row[1..3].each { |el| sum+=el }
#   #   ]
#   # end
# test(table) = 0

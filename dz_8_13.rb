require_relative 'helper'
require 'pry'

FILE_PATH = 'dz_8_13.csv'

# Create file with test data
# save_to_file(
#   generate_test_data(18, 3),
#   FILE_PATH
# )

def main
  table = read_data(FILE_PATH)
  a = test(table)
binding.pry
end


def test(table)
  # test(table) = 0
  new_table = table.map { |row| [row[0],  row[1..3].map(&:to_f)]  }

  new_table[1..3].chars.each do |char|
    if 5 == char
      counter += 1
    end


  # new_table.each do |i| i.select {|g| g == 5}
  #   puts " зарплата, полученная за квартал  работником № #{i[0]} =  #{i} "
  # end
end

puts test(table)
main

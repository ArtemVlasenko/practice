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
  binding.pry
  a = test(table)
  a.each_char
end

table = []
def test(table)
  # [
  #   [1,5],
  #   [1,4],
  # ]
  # item = 0
  # sub_array = 0
  # table.map  {|sub_array|  sub_array[1..3] }
  #   sub_array.each do |item| item.to_i
  #
  #   end
  # end
end
# table.map{ |arr| arr[1..3].map{ |v| v.to_f } }
puts test(table)

main

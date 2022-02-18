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
  binding.pry
  a = test(table)
  a.each
end

table = []
def test(table)
  test = 0
  table.map do |sub_array|
    sub_array[1..3]
     sub_array.map  {|x| x.to_i}
     x = test(table)
  #    x.select {|num| num == 1 }
  # end
end
puts test(table)
main

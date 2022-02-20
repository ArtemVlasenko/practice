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
end


def test(table)
  new_table = table.map { |row| [row[0],  row[1..3].map(&:to_i)]  }

  # new_table.map { |row| row[1].select { |number| number == 5  }.size  }.sum
  new_table.map do |row|
    row[1].select { |number| number == 5 }.size
  end
end

main

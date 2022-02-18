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

def test(table)
  # [
  #   [1,5],
  #   [1,4],
  # ]

  # binding.pry
  new_table = table.map do |row|
    row.map do |item|
      item.to_f
    end
  end

  # new_table = table.map do |row|
  #   [row[0]] + row[1..3].map do |el|
  #     el.to_f
  #   end
  # end
  # new_table.map { |row| [row[0], row[1..3].sum]  }
  # new_table.map do |row|
  #   sum = 0
  #   [
  #     row[0],
  #     row[1..3].each { |el| sum+=el }
  #   ]
  # end
  # table.map { |row| [row[0],  row[1..3].map(&:to_f).sum ]  }

end

main

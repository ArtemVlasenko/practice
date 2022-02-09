require_relative 'helper'
require 'pry'

FILE_PATH = 'dz_8_12.csv'

# Create file with test data
save_to_file(
  generate_test_data(15, 3),
  FILE_PATH
)

def main
  table = read_data(FILE_PATH)
  binding.pry
end

main

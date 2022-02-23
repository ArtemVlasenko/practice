require_relative 'helper'
require 'pry'

FILE_PATH = 'dz_8_14.csv'

# Create file with test data
# save_to_file(
#   generate_test_data(15, 3),
#   FILE_PATH
# )

def main
  table = read_data(FILE_PATH)
  # binding.pry
  # a = test(table)
  # a.each

  the_number_of_students_the_session_without_twos = the_number_of_students_by_session_without_twos(table)
  print_the_number_of_students_the_session_without_two(the_number_of_students_the_session_without_twos)
end


def the_number_of_students_by_session_without_twos(table)
  # array = table.transpose
  # array.each_with_index.map do |row, index|
  #   [index, row.map(&:to_i) ]
  # end
    new_array = table.map {|row| [row[0], row[1..3].map(&:to_i)]}
end

def print_the_number_of_students_the_session_without_two(the_number_of_students_the_session_without_twos)
  the_number_of_students_the_session_without_twos.each { |char|char.map.select { |number| number > 2 }.size}



    puts "количество студентов, сдавших сессию без двоек #{char}"


end





main

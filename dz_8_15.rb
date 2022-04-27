require_relative 'helper'
require 'pry'

FILE_PATH = 'dz_8_15.csv'

# Create file with test data
# save_to_file(
#   generate_test_data(8,5),
#   FILE_PATH
# )

def main
#    binding.pry
  table = read_data(FILE_PATH)

  number_of_students_by_session_without_twos = the_number_of_students_by_session_without_twos(table)
  print_the_number_of_students_by_session_without_twos = number_of_students_by_session_without_twos
  puts print_the_number_of_students_by_session_without_twos.to_s

  winner_number, winner_score = how_many_points_did_the_winner_get(table)
  print_the_how_many_points_did_the_winner_get = winner_number, winner_score
  puts "Participant with number #{winner_number} has score #{winner_score}"
end

def the_number_of_students_by_session_without_twos(table)
  array = table.map { |row| [row[0], row[1..5].map(&:to_i)] }
  new_array = array.map do |row|
    row[1].max
  end
  new_array.max
end

def how_many_points_did_the_winner_get(table)
  array = table.map { |row| [row[0], row[1..5].map(&:to_i)] }
  array.map do |row|
    [row[0], row[1].sum]
  end.max { |a, b| a[1] <=> b[1] }
end

main

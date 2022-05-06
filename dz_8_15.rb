require_relative 'helper'
require 'pry'

FILE_PATH = 'dz_8_15.csv'

# Create file with test data
# save_to_file(
#   generate_test_data(8,5),
#   FILE_PATH
# )

def main
  table = read_data(FILE_PATH)

  number_of_students_by_session_without_twos = highest_mark(table)
  print_highest_mark = number_of_students_by_session_without_twos
  puts "Highest mark: #{print_highest_mark.to_s}"

  winner_number, winner_score = how_many_points_did_the_winner_get(table)
  puts "Participant with number #{winner_number} has score #{winner_score}"
end

def highest_mark(table)
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

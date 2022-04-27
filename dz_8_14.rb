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

  students_session_success = the_number_of_students_by_session_without_twos(table)
  students_without_twos = students_session_success.count(true)
  puts "количество студентов, сдавших сессию без двоек  #{students_without_twos}"

  number_by_subjects_which_only_grades_5_and_4_were_received = number_of_subjects_which_only_grades_5_and_4_were_received(table)
  print_number_of_subjects_which_only_grades_5_and_4_were_received = number_by_subjects_which_only_grades_5_and_4_were_received.count
  puts "количество предметов, по которым были получены только оценки 5 и 4 = #{print_number_of_subjects_which_only_grades_5_and_4_were_received}"

  number_of_twos_in_each_subject = the_number_of_twos_in_each_subject(table)
  print_number_of_twos_in_each_subject(number_of_twos_in_each_subject)
end


def the_number_of_students_by_session_without_twos(table)
  array = table.map { |row| [row[0], row[1..3].map(&:to_i)] }
  new_array = array.map do |row|
    row[1].all? { |elem| elem > 2 }
  end
end

# количество предметов, по которым были получены только оценки "5" и "4"
def number_of_subjects_which_only_grades_5_and_4_were_received(table)
  array = table.map { |row| [row[0], row[1..3].map(&:to_i)] }
  array = array.transpose
  array = array[1].transpose
  new_array = array.map do |row|
    row.select { |elem, number| number = (4..5).include?(elem) }.sum
  end
  # TODO: Add implementation here
end

# количество двоек по каждому предмету
def the_number_of_twos_in_each_subject(table)
  array = table.transpose
  array.each_with_index.map do |row, index|
    [index, row.map(&:to_i).select { |number| number == 2 }.size]
  end[1..3]
end

def print_number_of_twos_in_each_subject(number_of_twos_in_each_subject)
  number_of_twos_in_each_subject.each do |number_twos|
    puts "количество двоек по каждому предмету #{number_twos[0]} = #{number_twos[1]}"
  end
end


main

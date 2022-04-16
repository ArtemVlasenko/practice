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
  # puts "#{number_of_subjects_which_only_grades_5_and_4_were_received(table)}"

  students_session_success = the_number_of_students_by_session_without_twos(table)
  students_without_twos = students_session_success.count(true)
  puts "количество студентов, сдавших сессию без двоек  #{students_without_twos}"

  number_by_subjects_which_only_grades_5_and_4_were_received = number_of_subjects_which_only_grades_5_and_4_were_received(table)
  print_number_of_subjects_which_only_grades_5_and_4_were_received(number_by_subjects_which_only_grades_5_and_4_were_received)

  # the_number_in_twos_in_each_subject = the_number_of_twos_in_each_subject(table)
  # print_the_number_of_twos_in_each_subject(the_number_in_twos_in_each_subject)
end


def the_number_of_students_by_session_without_twos(table)
  array = table.map {|row| [row[0], row[1..3].map(&:to_i)]}
  new_array = array.map do |row|
    row[1].all?{ |elem| elem > 2 }
  end
end

# количество предметов, по которым были получены только оценки "5" и "4"
def number_of_subjects_which_only_grades_5_and_4_were_received(table)
  array = table.map {|row| [row[0], row[1..3].map(&:to_i)]}
  array = array.transpose
  array = array[1].transpose

  # TODO: Add implementation here
end

# def print_number_of_subjects_which_only_grades_5_and_4_were_received(number_by_subjects_which_only_grades_5_and_4_were_received)
#   number_by_subjects_which_only_grades_5_and_4_were_received.each do |number_of_subjects_which_only_grades_5_and_4_were_receiveds|
#     puts "количество предметов, по которым были получены только оценки 5 и 4,  #{number_of_subjects_which_only_grades_5_and_4_were_receiveds} =  "
#   end
# end

# количество двоек по каждому предмету
# def the_number_of_twos_in_each_subject(table)
# end

# def print_the_number_of_twos_in_each_subject(the_number_in_twos_in_each_subject)
#   the_number_in_twos_in_each_subject.each do |number_twos_each_subject|
#     puts "количество двоек по каждому предмету, #{number_twos_each_subject}"
# end



main

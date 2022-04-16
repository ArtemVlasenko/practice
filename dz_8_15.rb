require_relative 'helper'
require 'pry'

FILE_PATH = 'dz_8_15.csv'

# Create file with test data
save_to_file(
  generate_test_data(15,3),
  FILE_PATH
)

  def main
#    binding.pry
     table = read_data(FILE_PATH)

# #   #  puts "Общее количество пятерок в таблице = #{number_of_fives_by_table(table)}"

# #   # number_of_triplets_for_each_student = number_of_triplets_by_each_student(table)
# #   # print_number_of_triplets_for_each_students(number_of_triplets_for_each_student)

# #   # number_of_twos_in_each_subject = the_number_of_twos_in_each_subject(table)
# #   # print_number_of_twos_in_each_subject(number_of_twos_in_each_subject)


 end

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

   puts "Общее количество пятерок в таблице = #{number_of_fives_by_table(table)}"

  number_of_triplets_for_each_student = number_of_triplets_by_each_student(table)
  print_number_of_triplets_for_each_students(number_of_triplets_for_each_student)

  number_of_twos_in_each_subject = the_number_of_twos_in_each_subject(table)
  print_number_of_twos_in_each_subject(number_of_twos_in_each_subject)


end


def number_of_fives_by_table(table)

  array = table.map { |row| [row[0],  row[1..3].map(&:to_i)]  }

  #  new_array = array.map { |row| row[1].select { |number| number == 5  }.size  }.sum
  new_array = array.map do |row|
    row[1].select { |number| number == 5 }.size
  end.sum
end

# количество троек у каждого ученика
def number_of_triplets_by_each_student(table)
  new_array = table.map {|row| [row[0], row[1..3].map(&:to_i).select { |number| number == 3 }.size]}
end

def print_number_of_triplets_for_each_students(number_of_triplets_for_each_student)
  number_of_triplets_for_each_student.each do |number_of_triplets_for_each_students|
    puts " количество троек у каждого ученика #{number_of_triplets_for_each_students[0]} = #{number_of_triplets_for_each_students[1]}"
  end
end
#количество двоек по каждому предмету.
def the_number_of_twos_in_each_subject(table)
  array = table.transpose
  array.each_with_index.map do |row, index|
    [index, row.map(&:to_i).select { |number| number == 2 }.size ]
  end[1..3]
end

def print_number_of_twos_in_each_subject(number_of_twos_in_each_subject)
  number_of_twos_in_each_subject.each do |number_of_twos_in_each_subjects|
    puts "количество двоек по каждому предмету #{number_of_twos_in_each_subjects[0]} = #{number_of_twos_in_each_subjects[1]}"
  end
end



main



# new_array.map[] {|y| y.select { |number| number == 3 }.size}
# new_array = array.transpose
# array = table.map { |row| [row[0],  row[1..3].map(&:to_i)]  }
#   new_array = array.map do |row|
#     row[1].select { |number| number == 3 }.size
#   end
# new_array = array[1..3].select { |number| number == 3 }.size
# array.transpose.each_with_index do |row, index|
#   [index[0], row.map(&:to_i)]

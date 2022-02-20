require_relative 'helper'
require 'pry'

FILE_PATH = 'dz_8_12.csv'

# Create file with test data
# save_to_file(
#   generate_test_data(15, 3),
#   FILE_PATH
# )

first_discipline_sum = 0
second_discipline_sum = 0
third_discipline_sum = 0

[
  [1 ,2, 3, 6],
  [2 ,4, 5, 6]
].each do |row|
  first_discipline_sum += row[1]
  second_discipline_sum += row[2]
  third_discipline_sum += row[3]
end

def main
  table = read_data(FILE_PATH)
  avg_points_for_participants = avg_points_by_participant(table)
  print_avg_participants(avg_points_for_participants)
  avg_for_programms = avg_by_programm(table)
  print_avg_programms(avg_for_programms)
end

def avg_points_by_participant(table)
  table.map { |row| [row[0], row[1..3].map(&:to_f).sum / 3] }
end

def avg_by_programm(table)
  array = table.transpose
  array.each_with_index.map do |row, index|
    [index, row.map(&:to_f).sum / row.size]
  end[1..3]
end

def print_avg_participants(avg_points_for_participants)
  avg_points_for_participants.each do |avg_points_for_participant|
    puts "Среднее количесво балов для учасника #{avg_points_for_participant[0]} = #{avg_points_for_participant[1]}"
  end
end

def print_avg_programms(avg_for_programms)
  avg_for_programms.each do |avg_for_programm|
    puts "Среднее количесво балов для программы #{avg_for_programm[0]} = #{avg_for_programm[1]}"
  end
end

main




# new_table = table.map do |row|
#   #   row.map do |item|
#   #     item.to_f.sum
#   #   end
#   # end
#   # table_one = new_table[1..3].sum / 3

#   # new_table = table.map do |row|
#   #   [row[0]] + row[1..3].map do |el|
#   #     el.to_f
#   #   end
#   # end
#   # new_table = 0
#   # new_table.map { |row| [row[0], row[1..3].sum]  }
#   # new_table.map do |row|
#   #   sum = 0
#   #   [
#   #     row[0],
#   #     row[1..3].each { |el| sum+=el }
#   #   ]
#   # end
# test(table) = 0

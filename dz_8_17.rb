require_relative 'helper'
require 'pry'

FILE_PATH = 'dz_8_17.csv'
NUMBER_MONTH = {
  1 => 'Январь',
  2 => 'Февраль',
  3 => 'Март',
  4 => 'Апрель',
  5 => 'Май',
  6 => 'Июнь',
  7 => 'Июнь',
  8 => 'Август',
  9 => 'Сентябрь',
  10 => 'Октябрь',
  11 => 'Ноябрь',
  12 => 'Декабрь'
}


# Create file with test data
# save_to_file(
#   generate_test_data(12,3),
#   FILE_PATH
# )

def main
#    binding.pry
  table = read_data(FILE_PATH)

  which_months_she_received_highest_salary = highest_salary(table)
  print_highest_salary(which_months_she_received_highest_salary)

  which_employee_received_highest_salary_month = max_salary_month(table)
  print_max_salary(which_employee_received_highest_salary_month)
end

#  для каждого работника — в какой из месяцев он получил наибольшую зарплату
def highest_salary(table)
  table.map { |row| [row[0], row[1..3].each_with_index.collect {|number, number_two| NUMBER_MONTH[number_two + 1]  if number  == row[1..3].max }.compact] }
end


def print_highest_salary(which_months_she_received_highest_salary)
  which_months_she_received_highest_salary.each do |which_months_she_received_highest_salarys|
    puts "для каждого работника: #{which_months_she_received_highest_salarys[0]} = #{which_months_she_received_highest_salarys[1]}"
  end
end

# для каждого месяца — кто из работников получил наибольшую зарплату за этот месяц.

def max_salary_month(table)
  array = table.transpose[1..3]
  array.each_with_index.map do |row, index|
    [index + 1, row.map(&:to_i).max]
  end
end

def print_max_salary(which_employee_received_highest_salary_month)
  which_employee_received_highest_salary_month.each do |highest_salary_month|
    puts " кто из работников получил наибольшую зарплату за этот месяц: #{highest_salary_month[0]} = #{highest_salary_month[1]}"
  end
end

main

require_relative 'helper'
require 'pry'
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

FILE_PATH = 'dz_8_16.csv'

#  Create file with test data
# save_to_file(
#   generate_test_data(12, 3),
#   FILE_PATH
# )

def main
  table = read_data(FILE_PATH)

  maximum_salary = maximum_salary_from_those_indicated_in_table(table)
  print_maximum_salary_from_those_indicated_in_table = maximum_salary
  puts maximum_salary_from_those_indicated_in_table(table).to_s

  serial_number = serial_number_employee_who_received_largest_amount_for_quarter(table)
  print_serial_number_employee_who_received_largest_amount_for_quarter = serial_number
  puts serial_number_employee_who_received_largest_amount_for_quarter(table).to_s


  total_salary = in_what_month_was_total_salary_of_all_employees_highest(table)
  print_in_what_month_was_total_salary_of_all_employees_highest = total_salary
  puts in_what_month_was_total_salary_of_all_employees_highest(table).to_s
end

# максимальную зарплату из указанных в таблице;
def maximum_salary_from_those_indicated_in_table(table)
  table.map { |row| [row[0], row[1..3].map(&:to_i).sum] }.map { |el| el[1] }.max
end

# порядковый номер работника, получившего за квартал набольшую сумму
def serial_number_employee_who_received_largest_amount_for_quarter(table)
  b = table.map do |row|
    a = [
      row[0],
      row[1..3].map(&:to_i).sum
    ]
  end.max do |a, b|
    a[1] <=> b[1]
  end[0]
end


# в каком месяце общая зарплата всех работников была максимальной.
def in_what_month_was_total_salary_of_all_employees_highest(table)
  array = table.transpose[1..3]
  array.each_with_index.map do |row, index|
    [NUMBER_MONTH[index + 1], row.map(&:to_i).sum]
  end.max { |a, b| a[1] <=> b[1] }
end

main

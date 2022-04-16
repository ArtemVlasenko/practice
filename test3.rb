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

table = [["1", "1", "3", "2"],
         ["2", "3", "1", "4"],
         ["3", "4", "5", "1"],
         ["4", "3", "1", "3"],
         ["5", "2", "4", "2"],
         ["6", "3", "10", "3"]]

# сколько баллов набрал победитель соревнований.
def the_number_of_students_by_session_without_twos(table)
  array = table.map { |row| [row[0], row[1..3].map(&:to_i)] }
  new_array = array.map do |row|
    row[1].max
  end
  new_array.max
end

puts  "#{the_number_of_students_by_session_without_twos(table)}"

# сколько баллов набрал победитель соревнований.
def how_many_points_did_the_winner_get(table)
  array = table.map { |row| [row[0],  row[1..3].map(&:to_i)] }
  new_array = array.map do |row|
    [row[0], row[1].sum]
  end.max { |a, b| a[1] <=> b[1] }
end

winner_number, winner_score = how_many_points_did_the_winner_get(table)

puts "Participant with number #{winner_number} has score #{winner_score}"

# 8.16
# максимальную зарплату из указанных в таблице;
def maximum_salary_from_those_indicated_in_table(table)
  array = table.map { |row| [row[0],  row[1..3].map(&:to_i).sum] }.map { |el| el[1] }.max
end
puts "#{maximum_salary_from_those_indicated_in_table(table)}"

# в каком месяце общая зарплата всех работников была максимальной.
def in_what_month_was_total_salary_of_all_employees_highest(table)
  array = table.transpose[1..3]
  array.each_with_index.map do |row, index|
    [NUMBER_MONTH[index + 1], row.map(&:to_i).sum]
  end.max { |a,b| a[1] <=> b[1]  }
end

puts "#{in_what_month_was_total_salary_of_all_employees_highest(table)}"

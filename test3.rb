

table = [["1", "1", "3", "2"],
         ["2", "3", "1", "4"],
         ["3", "4", "5", "1"],
         ["4", "3", "1", "3"],
         ["5", "2", "4", "2"],
         ["6", "3", "10", "3"]]

# сколько баллов набрал победитель соревнований.
# def the_number_of_students_by_session_without_twos(table)
#   z = 0
#   array = table.map { |row| [row[0],  row[1..3].map(&:to_i)] }
#   new_array = array.map do |row|
#     row[1].max { |number, z| number <=> z }
#   end.max
# end

# puts  "#{the_number_of_students_by_session_without_twos(table)}"


# сколько баллов набрал победитель соревнований.
# def how_many_points_did_the_winner_get(table)
#
#   array = table.map { |row| [row[0],  row[1..3].map(&:to_i)] }
#   new_array = array.map do |row|
#     row[1].select { |number| number  }.sum
#   end.max
# end

# puts "#{how_many_points_did_the_winner_get(table)}"

# 8.16
# максимальную зарплату из указанных в таблице;
# def maximum_salary_from_those_indicated_in_table(table)
#   array = table.map { |row| [row[0],  row[1..3].map(&:to_i).sum] }.enum_for.max

# end
# puts "#{maximum_salary_from_those_indicated_in_table(table)}"


  # в каком месяце общая зарплата всех работников была максимальной.
  def In_what_month_was_total_salary_of_all_employees_highest(table)
    array = table.transpose
    array.each_with_index.map do |row, index|
      [index, row.map(&:to_i).map { |number| number }.sum]

    end[1..3]
  end

  puts "#{In_what_month_was_total_salary_of_all_employees_highest(table)}"

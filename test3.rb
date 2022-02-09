
NUMBER_MONTHS = {
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




names = [[10, 10, 10], [20, 20, 20]]

names.each_with_index do |row, index|
  next if index == 0
[
  NUMBER_MONTHS[index],
  row.sum
]

end
puts names


# table = [[10, 10, 10], [20, 20, 20]]
# def total_sum_by_month_for_all_employees(table)
#   total_sum_by_month_for_all_employees = 0
#   table.transpose.each_wich_index do |row, index|
#     next if index == 0

#     table.map { |row| [row[0], row[1..3].sum] }
#     [
#      NUMBER_MONTHS[index],
#      row.sum
#     ]

#   end

# puts total_sum_by_month_for_all_employees(table)

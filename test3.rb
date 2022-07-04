# require 'pry'

# NUMBER_MONTH = {
#   1 => 'Январь',
#   2 => 'Февраль',
#   3 => 'Март',
#   4 => 'Апрель',
#   5 => 'Май',
#   6 => 'Июнь',
#   7 => 'Июнь',
#   8 => 'Август',
#   9 => 'Сентябрь',
#   10 => 'Октябрь',
#   11 => 'Ноябрь',
#   12 => 'Декабрь'
# }

# table = [["1", "1", "3", "2"],
#          ["2", "3", "1", "4"],
#          ["3", "4", "5", "2"],
#          ["4", "3", "2", "3"],
#          ["5", "10", "15", "2"],
#          ["6", "3", "11", "3"]]


# 8.16
# порядковый номер работника, получившего за квартал набольшую сумму
# def maximum_salary_from_those_indicated_in_table(table)
#   array = table.transpose[1..3]
#   result = array.each_with_index.map do |row, index|
#   [
#     index +1,
#     row.map(&:to_i).max,
#     row.index(row.map(&:to_i).max.to_s) + 1,

#   ]
#   end.max { |a, b| a[1] <=> b[1] }
# end
# puts "#{maximum_salary_from_those_indicated_in_table(table)}"

# в каком месяце общая зарплата всех работников была максимальной.
# def in_what_month_was_total_salary_of_all_employees_highest(table)
#   array = table.transpose[1..3]
#   array.each_with_index.map do |row, index|
#     [NUMBER_MONTH[index + 1], row.map(&:to_i).sum]
#   end.max { |a,b| a[1] <=> b[1]  }
# end

# puts "#{in_what_month_was_total_salary_of_all_employees_highest(table)}"
# {|index, b| index <=> b  }
# def draw_matrix(rows, columns, value)
#   rows.times do |row|
#     draw_row(columns, value)
#     puts
#   end
# end

# def square(n)
#   begin
#     if n.odd?
#       1.upto(n) do | row |
#         if row
#           puts "#{'*'} #{'= ' * (n -2)}#{'*'}"
#         else
#           puts "#{'* ' * n}"
#         end
#       end
#     else
#       puts 'Must odd number!'
#     end
#   rescue
#     puts 'Must integer number!'
#   end
# end
# square(7)






#  size = 7

# a = Array.new(size, '*').fill('=', 1..-2).join(' ') #=> "* = = = = = *"
# b = Array.new(size, '=').fill('*', 1..-2).join(' ')
# c = Array.new(size, '=').fill('*', 2..-3).join(' ')
# f = Array.new(size, '=').fill('*', 3..-4).join(' ')
# pattern = [a, b, c, f]
# puts pattern.take(size)

class ChessBoard
  def initialize
     @board = Array.new( 7 ){ Array.new( 7 ) }
  end

  def populate_new_board
     @board.each {| row | row.map! {| _ | 'pawn' } }
  end
end

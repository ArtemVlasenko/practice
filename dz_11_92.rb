# frozen_string_literal: true

# Рост 25 учеников класса представлен в виде массива.
# Определить количество учеников,
# рост которых больше среднего роста по классу.
GROWTH_RECORDED =  [1, 2, 2, 3, 4, 3, 4]

# # [179, 180, 181, 182, 183, 184, 185, 186, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 200, 179, 180, 180, 179, 180]

# mean_value = [
#   179, 180, 181, 182, 183, 184, 185, 186, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 200, 179, 180, 180, 179, 180
# ].sum.to_f / array.size

# [
#   179, 180, 181, 182, 183, 184, 185, 186, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 200, 179, 180, 180, 179, 180
# ].select { |el| el > mean_value }

array = [179, 180, 181, 182, 183, 184, 185, 186, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 200, 179, 180, 180, 179, 180]
mean = array.sum(0.0) / array.size
puts array.select { |el| el > mean }

# def replace_values_ten_with_zero(array)
#   m =0
#   j = array.inject(0.0) { |result, el| result + el}  / array.size
# end

  #  row.map(&:to_f)

# j = array.each_with_index.map do |row, index|
#   [index ,
#   row.sum.fdiv(array.size)]

# end
# puts " #{replace_values_ten_with_zero(GROWTH_RECORDED)}"
# .map {|h| h > array }.size
# def main
#   table = [[1, 2, 2, 3, 4, 3, 4]]
#   avg_points_for_participants = avg_points_by_participant(table)
#   print_avg_participants(avg_points_for_participants)

# end

# def avg_points_by_participant(table)
#   table.map { |row| [row[0], row[1..3].map(&:to_f).sum / 3] }
# end
# def print_avg_participants(avg_points_for_participants)
#   avg_points_for_participants.each do |avg_points_for_participant|
#     puts "Среднее количесво балов для учасника #{avg_points_for_participant[0]} = #{avg_points_for_participant[1]}"
#   end
# end
# main

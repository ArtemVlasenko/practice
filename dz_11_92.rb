# frozen_string_literal: true

# Рост 25 учеников класса представлен в виде массива.
# Определить количество учеников,
# рост которых больше среднего роста по классу.

# mean_value = [
#   179, 180, 181, 182, 183, 184, 185, 186, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 200, 179, 180, 180, 179, 180
# ].sum.to_f / array.size

# [
#   179, 180, 181, 182, 183, 184, 185, 186, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 200, 179, 180, 180, 179, 180
# ].select { |el| el > mean_value }


# mean = array.sum(0.0) / array.size
# puts array.select { |el| el > mean }

# def replace_values_ten_with_zero(array)
#   m =0
#   j = array.inject(0.0) { |result, el| result + el}  / array.size
# end


array = [191, 192, 193, 194, 195, 196, 197, 198, 189.5, 179, 180, 180, 179, 180]

def determine_studentswho_are_taller_than_class_average(array)
  mean = mean_height(array)
  array.select { |n| n > mean }.size
end

def mean_height(array)
  array.sum(0.0) / array.size
end

puts "Mean is: #{mean_height(array)}"
puts determine_studentswho_are_taller_than_class_average(array)

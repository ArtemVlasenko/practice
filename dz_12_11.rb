# frozen_string_literal: true

# Дан двумерный массив. Найти:
# а) сумму элементов, расположенных в левом верхнем и правом нижнем углах;
# б) среднее арифметическое элементов, расположенных в четырех углах.

array = [
  [1, 2, 3],
  [3, 4, 5],
  [10, 21, 3],
  [22, 22, 22],
  [22, 22, 23]
]

# matrix[0,0] + matrix[0][1] + matrix[1][0] + matrix[1][1]

def sum_elements_in_corners(array)

  array.map { |row|   row[0..-1].map(&:to_i)  }

end
puts "#{sum_elements_in_corners(array)}"

#  puts "#{index} : #{char} #{char.last}"

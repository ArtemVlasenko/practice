# frozen_string_literal: true

# step_goal = 4

# for line_count in 1..step_goal
#   space_goal = step_goal - line_count
#   for char_count in -1..step_goal
#     if char_count = space_goal
#       putc "5"
#       putc " "
#     end
#   end
#   putc "\n"
# end

# i = 4
# b = 5
# (1..i).each do |j|
#   n = i - j

#   (0..b).each do |i|
#   if i = n
#     putc '5'
#     putc ' '
#   end
#   end
#   putc "\n"
# end

def draw_matrix(rows, columns, value)
  rows.times do |row|
    draw_row(columns, value)
    puts
  end
end

def draw_row(columns, value)
  (1..columns).each do |_column|
    print "#{value} "
  end
end

draw_matrix(4, 6, 5)

# (1..10).each do |i|
# for j in

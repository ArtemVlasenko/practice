# frozen_string_literal: true

step_goal = 5

for line_count in 1..step_goal
  space_goal = step_goal - line_count
  for char_count in -1..step_goal
    if char_count < space_goal
      putc '1'
      putc ''
    end
  end
  putc "\n"
end



# step_goal = 5

# for line_count in 1..step_goal
#   space_goal = step_goal - line_count
#   for char_count in -1..step_goal
#     if char_count < space_goal
#       putc "1"
#     else
#       putc " "
#     end
#   end
#   putc "\n"
# end

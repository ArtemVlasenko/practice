# frozen_string_literal: true

# step_goal = 5

# for line_count in 1..step_goal
#   space_goal = step_goal - line_count
#   for char_count in 1..step_goal
#     if char_count > space_goal
#       putc '5'
#       putc ''
#     end
#   end
#   putc "\n"
# end

5.times do |iteration|
  (iteration + 1).times do
    print "5 "
  end
  puts
end

# for j in 1..5 do
#   for i in 1..5 do
#       print i,  " "
#   end
# puts
# end

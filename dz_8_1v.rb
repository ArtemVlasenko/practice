# frozen_string_literal: true

def draw_matrix(vertical)
  vertical.each do |number|
    draw_row(number)
    puts
  end
end

def draw_row(number)
  end_of_line = number + 9
  (number..end_of_line).to_a.each do |num|
    print "#{num} "
  end
end

draw_matrix([41, 51, 61, 71])

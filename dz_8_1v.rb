# frozen_string_literal: true

def draw_matrix(vertical)
  vertical = [41, 51, 61, 71]
  vertical.each do |number|
    draw_row(number)
  puts
  end
end


def draw_row(horizont)
  horizont = [41, 42 ... 50]
  horizont.each do |number|

  print "#{number} "
  end
end
draw_matrix 'horizont'


# def draw_matrix(rows, columns, value)
#   rows.times do |row|
#     draw_row(columns, value)
#     puts
#   end
# end

# def draw_row(columns, value)
#   (1..columns).each do |_column|
#     print "#{value} "
#   end
# end

# draw_matrix(4, 6, 5)

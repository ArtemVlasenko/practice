# frozen_string_literal: true

def draw_matrix(rows, columns)
  rows.times do
    (1..columns).each do |i|
      print "#{i} "
    end
    puts
  end
end
draw_matrix(4, 10)

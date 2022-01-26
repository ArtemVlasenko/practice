# frozen_string_literal: true

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

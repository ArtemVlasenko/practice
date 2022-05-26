# frozen_string_literal: true
# Составить процедуру,
# "рисующую" на экране прямоугольник из символов "*".
# Задачу решить двумя способами:
# 1) не используя процедуру, разработанную в задаче 10.35;
# 2) с использованием процедуры, разработанной в задаче 10.35

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

draw_matrix(4, 6, "*")

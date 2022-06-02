# frozen_string_literal: true

# Дан массив. Все его элементы:
# а) увеличить в 2 раза;
# б) уменьшить на число А;
# в) разделить на первый элемент.

def mas(elem)
  elem.each { |n| puts n * 2 }
end
mas([1, 2, 3, 4, 5, 10])

def mas(elem)
  a = 1
  elem.each { |n| puts n * 2 - a }
end
mas([1, 2, 3, 4, 5, 10])

def mas(elem)
  arrs = elem[0]
  elem.each { |n| puts n / arrs.to_f }
end
elem = [2, 2, 3, 4, 5, 10]
mas(elem)

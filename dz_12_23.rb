# frozen_string_literal: true

def compose_array
  array = []
  row = 0
  col = 0

  while row < 7
    array[row] = []
    while col < 7
    end
  end
end

size = 7

a = Array.new(size, '*').fill('=', 1..-2).join(' ') #=> "* = = = = = *"
b = Array.new(size, '=').fill('*', 1..-2).join(' ')
c = Array.new(size, '=').fill('*', 2..-3).join(' ')
f = Array.new(size, '=').fill('*', 3..-4).join(' ')
pattern = [a, b, c, f]

puts pattern.take(size)

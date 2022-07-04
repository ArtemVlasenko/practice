# frozen_string_literal: true

# def populate_a_two_array


# end

size = 7

  a = Array.new(size, '*').fill('=', 1..-2).join(' ') #=> "* = = = = = *"
  b = Array.new(size, '=').fill('*', 1..-2).join(' ')
  c = Array.new(size, '=').fill('*', 2..-3).join(' ')
  f = Array.new(size, '=').fill('*', 3..-4).join(' ')
pattern = [a, b, c, f]
puts pattern.take(size)

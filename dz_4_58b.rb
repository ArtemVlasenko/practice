# б) входят ли в него цифры 3, 6 или 9.
# frozen_string_literal: true

#  require_relative 'helper'

def check(x)
  a = x / 100
  b = x / 10 % 10
  c = x % 10

  if (a == 3) || (b == 3) || (c == 3) || (a == 6) || (b == 6) || (c == 6) || (a == 9) || (b == 9) || (c == 9)
  puts 'цифры: 3, 6 или 9, входят'
  else
  puts 'цифры: 3, 6 или 9, не входят'
  end
end
puts check(365)
# (helper == 3) || (helper == 6) || (helper == 9)

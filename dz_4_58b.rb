# б) входят ли в него цифры 3, 6 или 9.
# frozen_string_literal: true

 require_relative 'helper'

def check(x)
  a = obtain_hundreds(x)
  b = obtain_decades(x)
  c = obtain_units(x)

  if (a == 3) || (b == 3) || (c == 3) || (a == 6) || (b == 6) || (c == 6) || (a == 9) || (b == 9) || (c == 9)
    puts 'цифры: 3, 6 или 9, входят'
  else
    puts 'цифры: 3, 6 или 9, не входят'
  end
end

puts check(222)
# (helper == 3) || (helper == 6) || (helper == 9)

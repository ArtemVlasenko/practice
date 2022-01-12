# frozen_string_literal: true

# require_relative 'helper'

# # а) входят ли в него цифры 4 или 7;
# def check(x)
#   if (x / 100 == 4) || (x / 10 % 10 == 4) || (x % 10 == 4) || (x / 100 == 7) || (x / 10 % 10 == 7) || (x % 10 == 7)
#   puts 'Да,входит'
#   else
#   puts 'Нет,не входит'
#   end
# end
# puts check(555)
def check(x)
  a = x / 100
  b = x / 10 % 10
  c = x % 10

  if (a == 4) || (b == 4) || (c == 4) || (a == 7) || (b == 7) || (c == 7)
  puts 'цифры 4 или 7, входят'
  else
  puts 'цифры 4 или 7, не входят'
  end
end
puts check(473)

# frozen_string_literal: true

# require_relative 'helper'

# а) входят ли в него цифры 4 или 7;

#   if (x % 10 == 4), (x / 10 % 10 == 4), (x / 10 == 4), (x % 10 == 7), (x / 10 % 10 == 7), (x / 10 == 7)
# puts ("Да, входит")
#   else
# puts ("Нет, не входит")
# end

def check(x)
  a = x / 100
  b = x / 10 % 10
  c = x % 10

  if (a == 4) or (b == 4) or (c == 4) or (a == 7) or (b == 7) or (c == 7)
puts ("цифры 4 или 7, входят")
  else
puts ("цифры 4 или 7, входят не входят")
  end
end
puts check(433)
# б) входят ли в него цифры 3, 6 или 9.

def check(x)
  a = x / 100
  b = x / 10 % 10
  c = x % 10

  if (a == 3) or (b == 3) or (c == 3) or (a == 6) or (b == 6) or (c == 6) or (a == 9) or (b == 9) or (c == 9)
puts ("цифры: 3, 6 или 9, входят")
  else
puts ("цифры: 3, 6 или 9, не входят")
  end
end
puts check(111)

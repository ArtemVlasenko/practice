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
puts check(119)

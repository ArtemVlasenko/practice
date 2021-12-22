#  A      B     C
all_possible_values = [
  [true, true, true],
  [true, true, false],
  [true, false, false],
  [true, false, true],
  [false, true, true],
# ADD all combinations
]


def option_a(a, b, c)
  a && c || !b && !a # TODO
end

def option_b(a, b, c)
  a && c || !b && !a # TODO
end

def option_v(a, b, c)
  a && c || !b && !a # TODO
end

all_possible_values.each |values|
  puts "Option_A when A = #{values[0]} B = #{values[1]} C = #{values[2]}: #{option_a(*values)}"
end

# не (А и В) и (не А или не С);

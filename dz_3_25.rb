# frozen_string_literal: true

#  A      B     C

all_possible_values = [
  [true, true, true],
  [true, true, false],
  [true, false, false],
  [true, false, true],
  [false, true, true],
  [false, false, true],
  [false, false, false],
  [false, true, false]
]


def option_a(a, b, c)
  !(a && b) && (!a || !c)
end

def option_b(a, b, c)
  !(a && !b) || (a || !c)
end

def option_v(a, b, c)
  a && !b || !(a || !c)
end

all_possible_values.each do |values|
  puts "Option_A when A = #{values[0]} B = #{values[1]} C = #{values[2]}: #{option_a(*values)}"
end


# а) не (А и В) и (не А или не С);
# б) не (А и не В) или (А или не С);
# в) А и не В или не (А или не С).

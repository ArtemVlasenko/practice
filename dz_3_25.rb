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
  [false, true, false],
# ADD all combinations
]


def option_a(a, b, c)
  !(a && b) && (!a || !c) # TODO
end

def option_b(a, b, c)
  !(a && !b) || (a || !c)# TODO
end

def option_v(a, b, c)
  a && !b || !(a || !c) # TODO
end

all_possible_values.each |values|
  puts "Option_A when A = #{values[0]} B = #{values[1]} C = #xx.................,,,,,,....................,,,,,.....,l;;llkljjgfgggggfgfg{values[2]}: #{option_a(*values)}"



# а) не (А и В) и (не А или не С);
# б) не (А и не В) или (А или не С);
# в) А и не В или не (А или не С).

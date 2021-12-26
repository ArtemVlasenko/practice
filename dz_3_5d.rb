# frozen_string_literal: true

a = true
b = false
с = false

z = a && (!b || c)

puts "Result: #{z}"

#А и (не В или С);

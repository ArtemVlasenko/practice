# frozen_string_literal: true

a = true
b = false
c = false

z = !(a && c) || b

puts "Result: #{z}"


# не (А и С) или В;

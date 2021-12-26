# frozen_string_literal: true

def calc(v_0, t, a)
  (v_0 * t) + (a * t**2) / 2
end

puts calc(2, 2, 2)

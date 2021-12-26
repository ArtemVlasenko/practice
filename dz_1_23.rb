# frozen_string_literal: true

def formula(a)
  a**2 + 10 / Math::sqrt(a**2 + 1)
end

puts formula(2)

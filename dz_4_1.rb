# frozen_string_literal: true

def calculate(x_variable)
  if x_variable > 0
    Math::sin(x_variable)**2
  else
    1 - (2 * Math::sin(x_variable)**2)
  end
end

puts "X equal: #{calculate(2)}"

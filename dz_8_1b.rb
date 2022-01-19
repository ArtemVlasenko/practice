# frozen_string_literal: true

[1,2,3].each do |i|
  break if i = 2
  puts i, ""
end

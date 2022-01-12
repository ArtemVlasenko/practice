# frozen_string_literal: true

(100..200).each do |i|
  if (i % 3).zero?
    i += 1
    puts i
  end
end

# frozen_string_literal: true

def iteration
  5.downto(1).each { |number| puts ('1 ' * number).ljust(5) }
end

iteration

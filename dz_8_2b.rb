# frozen_string_literal: true

def iteration(number)
  5.downto(1).each { |number| puts ('1 ' * number).ljust(5) }
end
iteration 'number'

def iteration(number)
  1.upto(5).each { |number| puts ('1' * number).rjust(1) }
end
iteration 'number'

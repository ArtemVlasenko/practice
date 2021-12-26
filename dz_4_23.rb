# frozen_string_literal: true

number = 32
decades = number / 10
units = number % 10

if decades > units
  puts('Первая больше')
end
if decades < units
  puts('Вторая больше')
end
if decades == units
  puts('Они одинаковые')
end

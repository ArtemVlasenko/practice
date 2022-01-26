# frozen_string_literal: true

# 5.times do |iteration|
#   (iteration + 1).times do
#     print '5 '
#   end
#   puts
# end

def iteration(number)
  1.upto(5).each { |x| puts ('5 ' * x).rjust(1) }
end
iteration 'number'

# rjust - Если параметр integer больше, чем длина строки str,
# то метод возвращает новую строку длины integer со строкой str выравненной по правому краю,
# а возникшее пустое место заполняется символами padstr; иначе,
# возвращается строка str.

# upto - Данный итератор проходит все значения между str и other_str включительно,
# передавая их в блок в качестве параметра.

# Вычислить значение логического выражения при следующих значениях логических величин А, В и С: А = Истина, В = Ложь, С = Ложь:
# а) А или В и не С;

a = true
b = false
с = false
z = a||b && !c

puts "Result: #{z}"

require 'pry'

# table = [
#   ["1", "5", "2", "3"]
# ]

table = [["1", "1", "3", "2"],
["2", "3", "1", "4"],
["3", "4", "2", "1"],
["4", "3", "1", "3"],
["5", "2", "4", "2"],
["6", "2", "2", "2"]]

def total_sum(table)





  new_table = table.map { |row| [row[0],  row[1..3].map(&:to_i)] }

  new_table.map { |row| [row[0],  row[1..3].select |i| i > 2]}

puts " количество студентов, сдавших сессию без двоек  = #{row[0]}"


end


   total_sum(table)




  # puts " зарплата, полученная за квартал  работником № #{x}"



# puts total_sum(table)

# def test(table)
#   test = 0
#   table.map do |sub_array|
#     sub_array[1..3]
#      sub_array.map  {|x| x.to_i}
#   end
#      x = test(table)
#      x.map.select {|num| num == 1 }

# end
# puts test(table)

# table = [["1", "1", "3", "2"],
#     ["2", "5", "1", "4"],
#     ["3", "4", "5", "1"],
#     ["4", "3", "1", "3"],
#     ["5", "2", "4", "2"]]

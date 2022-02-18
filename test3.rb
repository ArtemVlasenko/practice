require 'pry'

table = [
  ["1", "5", "2", "3"]
]

def total_sum(table)
  total_sum = 0
  sub_array = 0

  table.map do |sub_array|
    # sub_array.flatten
    binding.pry
    sub_array[1..3].map {|x| x }
    sub_array.inject{ |result, elem| result + elem }
  end
end




  # puts " зарплата, полученная за квартал  работником № #{x}"


# puts total_sum(table)
puts total_sum(table)

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

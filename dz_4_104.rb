# frozen_string_literal: true

# def DayName(day)
#   nameofDay = ""
#   case day  #(case - проверяет множество значений)
#   when "1"
#     nameofDay = "Понедельник"
#   when "2"
#     nameofDay = "Вторник"
#   when "3"
#     nameofDay = "Среда"
#   when "4"
#     nameofDay = "Четверг"
#   when "5"
#     nameofDay = "Пятница"
#   when "6"
#     nameofDay = "Суббота"
#   when "7"
#     nameofDay = "Воскресенье"
#   else
#     puts ("Error")
#   end

# end
# puts DayName("6")
name = {
  1 => 'Понедельник',
  2 => 'Вторник',
  3 => 'Среда',
  4 => 'Четверг',
  5 => 'Пятница',
  6 => 'Суббота',
  7 => 'Воскресенье'
}
puts name[2]

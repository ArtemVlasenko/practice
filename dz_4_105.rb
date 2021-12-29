# def getDayWeek(day)
#   nameofDay = "Ошибка"
#   case day
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
# puts getDayWeek("5")


def nombermonth(nomber_month)
  nomber_month = ""
  print("Введите число: ")
  nomber_month = gets.chomp().to_i

  if nomber_month = {
  1 => "Январь",2 => "Февраль",3 => "Март",4 => "Апрель",5 => "Май",6 => "Июнь",7 => "Июнь",8 => "Август",9 => "Сентябрь",10 => "Октябрь",11 => "Ноябрь",12 => "Декабрь"
  }

else
  puts "error"
end
end
# puts nombermonth("nomber_month")

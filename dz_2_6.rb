def twonumber(n)
  # hours = n / 3600
  # result = n - hours * 3600
  # result = result / 60;
  hours = n/3600
  minutes =n/60
  seconds = n-(minutes*60)

  {
    hours: hours,
    minutes: minutes,
    seconds: seconds
  }
end

print("Введите число n: ")
seconds = gets.chomp().to_i

result = twonumber(seconds)

# "3664 seconds contain 1 hour(s) 1 minute(s) 4 second(s)"
puts "#{seconds} seconds contain #{result[:hours]} hour(s) #{result[:minutes]} minute(s) #{result[:seconds]} second(s)"

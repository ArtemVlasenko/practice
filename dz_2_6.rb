def time(n)
  # hours = n / 3600
  # result = n - hours * 3600
  # result = result / 60;
  hours = 0
  minutes = 0
  seconds = 0

  {
    hours: hours,
    minutes: minutes,
    seconds: seconds
  }
end

print("Введите число n: ")
seconds = gets.chomp().to_i

result = time(seconds)

# "3664 seconds contain 1 hour(s) 1 minute(s) 4 second(s)"
puts "#{seconds} seconds contain #{result[:hours]} hour(s) #{result[:minutes]} minute(s) #{result[:seconds]} second(s)"

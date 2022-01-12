def obtain_hundreds(number)
  number / 100
end

def obtain_decades(number)
  number / 10 % 10
end

def obtain_units(number)
  number % 10
end

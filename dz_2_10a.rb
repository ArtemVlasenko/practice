# def twonumber(n)

#   numbertens = n/10
#   numberunits = n/1
#   sumdigits = n+n


# end






def twodigit(n)

  numbertens = n/10
  numberunits = n/1
  sumdigits = n+n

  {
    numbertens: numbertens,
    numberunits: numberunits,
    sumdigits: sumdigits
  }
end

print("Введите число n: ")
sumdigits = gets.chomp().to_i

result = twodigit(sumdigits)


puts "Дано двузначное число: #{sumdigits} : #{result[:numbertens]} числа десятков в нем : #{result[:numberunits]} число единиц в нем : #{result[:sumdigits]} сумма его цифр"

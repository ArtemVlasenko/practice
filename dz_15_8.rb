# frozen_string_literal: true

# Дан текстовый файл. Подсчитать количество строк в нем

text =  File.open("input.txt", "r").read.count("\n")
puts text

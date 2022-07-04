# frozen_string_literal: true
# Составить процедуру,
# "рисующую" на экране прямоугольник из символов "*".
# Задачу решить двумя способами:
# 1) не используя процедуру, разработанную в задаче 10.35;
# 2) с использованием процедуры, разработанной в задаче 10.35

# def draw_rectangle(height, width)
# 	if (height <= 2 || width <= 2)
# 	# When height and width less than three
# 		return
# 	end
# 	print("\nHeight : ", height ," Width : ", width ,"\n\n")
# 	row = 0
# 	column = 0
# 	while (row < height)
# 		# This Loop controlling the width of rectangle
# 		column = 0
# 		while (column < width)
# 			# When anyone is a valid
# 			# This condition is display outer layer of rectangle
# 			if (row == 0 || row == height - 1 || column == 0 || column == width - 1)
# 				print("* ")
# 			else
# 				# include 2 spaces
# 				print("  ")
# 			end
# 			column += 1
# 		end
# 		# include new line
# 		print("\n")
# 		row += 1
# 	end
# end

LINE_SYMBOL = '* '
EMPTY_LINE_SYMBOL = '  '

def first_or_last_line?(length:, number:)
	[0, length - 1].include?(number)
end

def draw_line(width:, symbol: LINE_SYMBOL)
	width.times { print symbol }
	print("\n")
end

def draw_empty_line(width:, line_symbol: LINE_SYMBOL, empty_line_symbol: EMPTY_LINE_SYMBOL)
	width.times do |number|
		if first_or_last_line?(length: width, number: number)
			print line_symbol
		else
			print empty_line_symbol
		end
	end
	print("\n")
end

def draw_rect(height:, width:)
	print("\nHeight : ", height ," Width : ", width ,"\n\n")
	height.times do |number|
		if first_or_last_line?(length: height, number: number)
			draw_line(width: width)
		else
			draw_empty_line(width: width)
		end
	end
end

def main()
	# draw_rectangle(6, 6)
	# draw_rectangle(7, 9)
	# draw_rectangle(3, 7)
	draw_rect(height: 10, width: 15)
end

 main()

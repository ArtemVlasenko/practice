# frozen_string_literal: true
# Составить процедуру,
# "рисующую" на экране прямоугольник из символов "*".
# Задачу решить двумя способами:
# 1) не используя процедуру, разработанную в задаче 10.35;
# 2) с использованием процедуры, разработанной в задаче 10.35



class MyPattern

	# This function is used to draw a rectangle of a given width and height.
	def draw_rectangle(height, width)

		if (height <= 2 || width <= 2)
    # When height and width less than three
			return
		end
		print("\nHeight : ", height ," Width : ", width ,"\n\n")
		i = 0
		j = 0
		while (i < height)

			# This Loop controlling the width of rectangle
			j = 0
			while (j < width)

				# When anyone is a valid
				# This condition is display outer layer of rectangle
				if (i == 0 || i == height - 1 || j == 0 || j == width - 1)

					print("* ")
				else

					# include 2 spaces
					print("  ")
				end
				j += 1
			end
			# include new line
			print("\n")
			i += 1
		end
	end
end
def main()

	obj = MyPattern.new()
	# Test Cases
	obj.draw_rectangle(6, 6)
	# obj.draw_rectangle(7, 9)
	# obj.draw_rectangle(3, 7)
end
main()

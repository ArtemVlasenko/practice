# frozen_string_literal: true

# Заполнить массив случайными целыми числами, после чего отсортировать
# его в порядке возрастания:
# а) методом обмена ("пузырьковая" сортировка);
# б) методом выбора;
# в) методом вставок;
# г) методом подсчета.

 def fill_array_with_random_numbers

  generated_numbers = 5.times.map{Random.rand(8) }
  # (1..10).to_a.sample(7)

end
puts fill_array_with_random_numbers


array = [1,2,3,4,5]

# а) методом обмена ("пузырьковая" сортировка);

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

   array
end


# б) методом выбора;
def selection_sort(array)
  n = array.length - 1
  n.times do |i|
    min_index = i
    for j in (i + 1)..n
      min_index = j if array[j] < array[min_index]
    end
    array[i], array[min_index] = array[min_index], array[i] if min_index != i
  end
  puts array
end

# в) методом вставок;
def insertion_sort(array)
  for i in 1...(array.length)
      j = i
      while j > 0
          if array[j-1] > array[j]
              temp = array[j]
              array[j] = array[j-1]
              array[j-1] = temp
          else
              break
          end
          j = j - 1
      end
  end
  return array
end

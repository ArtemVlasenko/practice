# frozen_string_literal: true

# Известны максимальные скорости 20-ти моделей легковых автомобилей.
# Все значения выражены в км/ч.
# Напечатать названия моделей, у которых максимальная скорость превышает 180 км/ч.

hash = {"vaz" => 100, "mazda" => 110, "suzuki" => 150, "audi" => 160,
"fiat" => 170, "kia" => 180, "hyundai" => 190, "bmw" => 200}

def maximum_speed(hash)
  hash.select { |el, number| number >= 180 }
end

puts "Task -> input: #{hash}  output: #{maximum_speed(hash)}"

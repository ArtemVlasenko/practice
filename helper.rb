require 'csv'

def obtain_hundreds(number)
  number / 100
end

def obtain_decades(number)
  number / 10 % 10
end

def obtain_units(number)
  number % 10
end

def generate_test_data(rows, columns)
  (1..rows).to_a.map do |n|
    array = [n]
    columns.times { array << random_number }
    array
  end
end

def random_number
  rand(0.5...10.0)
end

def save_to_file(data, file_path)
  CSV.open( file_path, 'w' ) do |file|
    # writer << table.first.attributes.map { |a,v| a }
    data.each do |row|
      file << row
    end
  end
end

def read_data(file_path)
  CSV.read(file_path)
end

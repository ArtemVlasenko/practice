# frozen_string_literal: true

def convert_kg_to_centner(kg)
  kg / 100.0
end

kilogram = 1099.0

puts "In #{kilogram} kg -> #{convert_kg_to_centner(kilogram)} centner"

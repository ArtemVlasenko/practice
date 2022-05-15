# frozen_string_literal: true

def which_last_name_is_longer(surname, surname_two)
  long = [surname, surname_two].max.length
  puts long.to_s
end

which_last_name_is_longer("Зеленский", "Байден")

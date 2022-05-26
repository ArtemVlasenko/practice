# frozen_string_literal: true

# Дан текст. Определить, сколько в нем предложений.

# TODO: Redo
# works incorrectlly

def number_of_offers(text)
  text = text.squeeze('.!?')
  puts text.split(/[.!?]/).count.to_s
end

text = <<~TEXT
  Біси дохнуть, сонце сходить???
  Ця земля воїнів родить...
  Хай сміливих смерть обходить.
  Гуляй, дике поле!!!
  Sentence
TEXT

number_of_offers(text)

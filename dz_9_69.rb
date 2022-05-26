# frozen_string_literal: true

# Дан текст. Определить, сколько в нем предложений.

# TODO: Redo
# works incorrectlly

def number_of_offers(word)
  word.squeeze('.!?')
  puts word.count('.!?').to_s
end
word = 'Біси дохнуть, сонце сходить. Ця земля воїнів родить. Хай сміливих смерть обходить. Гуляй, дике поле!'
number_of_offers(word)

# frozen_string_literal: true

class Cipher
  include Base

  def initialize(phrase:, shift_factor:)
    @phrase = phrase
    @shift_factor = shift_factor
    start
  end

  # private

  def start
    word = []
    @phrase.chars.each_with_index do |c, index|
      if empty?(c) || !included?(c)
        word << c
        next
      end

      # TODO: improve this comparison
      c = c.downcase if upcase?(c, index)

      unless valid_char?(c)

        sum = Support.alphabet_table[c] + @shift_factor

        sum = sum - Support.alphabet_table.length if off_limits?(sum)

        letter = select_letter(sum)
        # TODO: refactor this comparison
        # bringing upcase back
        letter = letter.upcase if @phrase.chars[index] == c.upcase

        word << letter

      end
    end
    word.join
  end
end

# TODO:
# - Arrumar alguma forma de usar a classe String e customizar os  métodos
# - Customizar o bloco que itera a array chars, tornando acessivel no modulo sem necessidade de parametro: c.metodo
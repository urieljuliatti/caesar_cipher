# frozen_string_literal: true

module Base
  def empty?(char)
    char.strip.empty?
  end

  def included?(char)
    Support.alphabet_table.include?(char.downcase)
  end

  def downcase?(char)
    c.eql?(char.upcase)
  end

  def off_limits?(sum)
    sum > Support.alphabet_table.length
  end

  def valid_char?(char)
    Support.alphabet_table[char].nil?
  end

  def select_letter(sum)
    Support.alphabet_table.select { |key, value| key if value.eql?(sum) }.keys.first
  end

  def upcase?(char, index)
    @phrase.chars[index].eql?(char.upcase)
  end
end

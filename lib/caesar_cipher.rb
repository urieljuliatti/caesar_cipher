# frozen_string_literal

require 'caesar_cipher/base'
require 'caesar_cipher/support'

=begin
def caesar_cipher(string, shift_factor)
  alphabet_table = build_alphabet
  word = []
  p alphabet_table
  string.chars.each_with_index do |c, index|
    #p "latin ascented: #{c.ascii_only?}"
    # 1 => base
    if c.strip.empty? || !alphabet_table.include?(c.downcase)
      #p "empty or not in alphabet: {#c}"
      word << c
      next
    end

    # 2 => downcase?
    c = c.downcase if c == c.upcase

    # 3 => nil?
    unless alphabet_table[c].nil?

    # 4 => accumulation
    sum = accumulation

    if sum > alphabet_table.length
      # 5 => alphabet_begining
      sum = sum - alphabet_table.length
      #p "valor após o último char: #{sum}"
      alphabet_table[c]
    end

    # 6 => select_letter
    letter = alphabet_table.select { |key, value| key if value.eql?(sum) }.keys.first
    # 7 => upcase?
    letter = letter.upcase if string.chars[index] == c.upcase
    word << letter
    end
  end
  word.join
end

def build_alphabet
  hash = {}
  ('a'..'z').zip(1..26).each {|item| hash[item[0]] = item[1] }
  hash
end

p caesar_cipher('Mozao eh gente boa!', 20)
=end
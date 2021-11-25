# frozen_string_literal: true

class Support
  def self.alphabet_table
    table = {}
    ('a'..'z').zip(1..26).each { |item| table[item[0]] = item[1] }
    table
  end
end

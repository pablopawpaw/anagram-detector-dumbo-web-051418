require 'pry'
class Anagram
  attr_accessor :word

  def initialize word
    @word = word
  end

  def match array
    # binding.pry
    array.map do |word|
      if word.downcase.split("").sort == self.word.downcase.split("").sort
        word
      else
        nil
      end
    end.compact
  end
end

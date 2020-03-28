# Your code goes here!
require "pry"
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(some_words)
    word_array = []
    some_words.each do |elm| #some_words = ["lemon", "apple", "pear"]
      word_array << elm.split("") #word_array = [["l","e","m","o","n"], [], []]
    end

    sorted_array = word_array.map {|array| array.sort} #sorted_array => [["e", "l", "m", "n", "o"], ["a", "e", "l", "p", "p"], ["a", "e", "p", "r"]]
    letters = @word.split("").sort #letters => ["a", "e", "l", "p", "p"]

    index_array = sorted_array.each_index.select{|i| sorted_array[i] == letters}

    if index_array.length > 0

      anagram = index_array.map {|index| some_words[index]}
      anagram
    else
      return []
    end
  end

end

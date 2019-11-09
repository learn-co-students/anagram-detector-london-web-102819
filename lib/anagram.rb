# Your code goes here!
require "pry"
class Anagram
    attr_accessor :word
    def initialize (word)
        @word = word
    end 

    def match(array)
        word_letters = word.chars
        array.select do |word|
            word.chars.sort == word_letters.sort 
        end
    end 


end 

# def select(array)
#     a = []
#     array.each do |item|
#         return_value = yield item
#         if return_value == true
#             a << item
#         end
#     end
#     a
# end
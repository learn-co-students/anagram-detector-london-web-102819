# Your code goes here!

class Anagram

    attr_accessor :word

    def initialize(word_name)
        @word = word_name
    end

    def match(word_array)
        results = []
        
        word_array.each do |word_element|
         
            results.push(word_element) if word_element.chars.sort == @word.chars.sort
        end

        results
    end
    
end



# Your code goes here!

class Anagram

    attr_reader :word

    def initialize(word)
        @word = word
    end

    def alphajumble(word)
        alphabetically_sorted_letters = word.split("").sort!.join
    end

    def match(list_of_words)
        primary_letters = alphajumble(self.word)
        ultralist = list_of_words.each.map {|word| alphajumble(word) }
        i=0
        indexicator =[]
        while i<ultralist.length do
            if ultralist[i] == primary_letters
            indexicator << i
            i +=1
            else i+=1
            end
        end
        i=0
        output=[]
        while i<indexicator.length do
            output << list_of_words[indexicator[i]]
            i+=1
        end
        output
    end
end
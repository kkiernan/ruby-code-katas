class TextAnalyzer

    ##
    # Get the words in a string (converted to downcase).
    # 
    def self.words(string)
        return string.downcase.scan(/\w+/)
    end

    ##
    # Get the letters in a string (converted to downcase).
    # 
    def self.letters(string)
        return string.downcase.scan(/[A-z]/)
    end

    ##
    # Get the words in a string that appear only once.
    # 
    def self.lonelyWords(string)
        words = self.words(string)
        return words.uniq.select { |word| words.count(word) === 1 }
    end

    ##
    # Get the words in a string that appear at least two times.
    # 
    def self.repeatingWords(string)
        words = self.words(string)
        return words.uniq.select { |word| words.count(word) >= 2 }
    end

    ##
    # Get the letters in a string that appear at least three times.
    # 
    def self.repeatingLetters(string)
        letters = self.letters(string)
        return letters.uniq.select { |letter| letters.count(letter) >= 3 }
    end

    ##
    # Get the symbols used in a string.
    # 
    def self.symbols(string, unique = false)
        symbols = string.scan(/[^\d^\s^A-z]/)

        if unique
            return symbols.uniq
        end

        return symbols
    end

end

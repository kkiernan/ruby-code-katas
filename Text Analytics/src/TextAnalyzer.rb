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
    def self.letters(string, unique = false)
        letters = string.downcase.scan(/[A-z]/)

        if unique
            return letters.uniq
        end

        return letters
    end

    ##
    # Get the words in a string that appear only once.
    # 
    def self.lonelyWords(string)
        words = self.words(string)
        return words.uniq.select { |word| words.count(word) === 1 }
    end

    ##
    # Get the words in a string that appear at least the minimum number of
    # times specified.
    # 
    def self.repeatingWords(string, min = 2)
        words = self.words(string)
        return words.uniq.select { |word| words.count(word) >= min }
    end

    ##
    # Get the letters in a string that appear at least the minimum number
    # of times specified.
    # 
    def self.repeatingLetters(string, min = 3)
        letters = self.letters(string)
        return letters.uniq.select { |letter| letters.count(letter) >= min }
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

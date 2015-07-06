require 'test/unit'

load '../src/TextAnalyzer.rb'

class TC_TextAnalyzerTest < Test::Unit::TestCase

    def test_true
        assert(true, '1')
    end

    def test_it_returns_array_of_words
        assert_equal(TextAnalyzer.words('one two three'), ['one', 'two', 'three'])
    end

    def test_it_finds_words_used_only_once
        assert_equal(TextAnalyzer.lonelyWords('once twice twice'), ['once'])
    end

    def test_it_finds_repeating_words
        assert_equal(TextAnalyzer.repeatingWords('hey hey, my my cover'), ['hey', 'my'])
    end

    def test_it_finds_repeating_letters
        assert_equal(TextAnalyzer.repeatingLetters('What is up my man?', 2), ['a', 'm'])
    end

    def test_it_finds_letters_used_five_or_more_times
        assert_equal(TextAnalyzer.repeatingLetters('hey hi hello handsome hair', 5), ['h'])
    end

    def test_it_finds_the_symbols_used
        assert_equal(TextAnalyzer.symbols('F!nd the symb()ls'), ['!', '(', ')'])
    end

    def test_it_returns_array_of_letters
        assert_equal(TextAnalyzer.letters('hello world', false), ['h', 'e', 'l', 'l', 'o', 'w', 'o', 'r', 'l', 'd'])
    end

    def test_it_finds_the_letters_used
        assert_equal(TextAnalyzer.letters('hello world', true), ['h', 'e', 'l', 'o', 'w', 'r', 'd'])
    end

end
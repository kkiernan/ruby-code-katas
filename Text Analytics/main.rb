load 'TextAnalyzer.rb'

puts TextAnalyzer.words('Here is a string')                              # => ['here', 'is', 'a', 'string']
puts TextAnalyzer.lonelyWords('this is a lonely sentence').length        # => 5
puts TextAnalyzer.repeatingWords('hey hey, my my').length                # => 2
puts TextAnalyzer.repeatingLetters('What\'s up my main man?').length     # => 2
puts TextAnalyzer.symbols('Figures out* what $$$ymbols are used!')       # => ['*', '$', '$', '$', '!']
puts TextAnalyzer.symbols('Figures out* what $$$ymbols are used!', true) # => ['*', '$', '!']
puts TextAnalyzer.letters('a b c')                                       # => ['a', 'b', 'c']

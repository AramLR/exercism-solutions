=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end

class Anagram
  def initialize(word)
    @initial_word = word
  end

  def match(candidates)
    candidates.select do |word|
      @initial_word.downcase.chars.all? {|char| word.downcase.count(char) == @initial_word.downcase.count(char)} && @initial_word.downcase != word.downcase && @initial_word.size == word.size
    end
  end
end

detector = Anagram.new('listen')
p detector.match(%w[enlists google inlets banana])
expected = %w[inlets]

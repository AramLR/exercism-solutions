=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end

module Pangram
  ALPHABET_SIZE = 26
  def self.pangram?(sentence)
    normalized_sentence = sentence.downcase
    search = /[a-z]/
    matches = normalized_sentence.scan(search)

    
    matches.uniq.size >= ALPHABET_SIZE
  end
end


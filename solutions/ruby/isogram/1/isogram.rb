=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

module Isogram
  def self.isogram?(text)
    p text.downcase.chars
    text.downcase.chars.each do |char|
      return false if text.downcase.count(char) > 1 and char != " " and char != "-"
    end
    true
  end
end
=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

module Luhn

  def self.double_digit(digit)
    doubled = digit * 2
    doubled > 9 ? doubled - 9 : doubled
  end

  def self.valid?(number)
    number_without_whitespaces = number.gsub(/\s+/, '')

    validation_regex = /[0-9]{2,}/

    return false if number_without_whitespaces.scan(validation_regex)[0] != number_without_whitespaces

    doubled = number_without_whitespaces.reverse.chars.map.with_index do |item, index|
      index.even? ? item.to_i : double_digit(item.to_i)
    end
    
    doubled.sum % 10 == 0 
  end
end

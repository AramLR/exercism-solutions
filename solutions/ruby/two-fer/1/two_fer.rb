=begin
Write your code for the 'Two Fer' exercise in this file. Make the tests in
`two_fer_test.rb` pass.
=end

def two_fer(person_name="you")
  "One for #{person_name}, one for me."
end

puts two_fer "Alice"
puts two_fer "Bohdan"
puts two_fer ""
puts two_fer "Zaphod"

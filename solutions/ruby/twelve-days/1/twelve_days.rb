=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

module TwelveDays

  ORDINAL_NUMBERS = [
    "first",
    "second",
    "third",
    "fourth",
    "fifth",
    "sixth",
    "seventh",
    "eighth",
    "ninth",
    "tenth",
    "eleventh",
    "twelfth"
  ]

  CARDINAL_NUMBERS = [
    # Use 'and a' instead of 'one' because in the song it does not appear 'one Partridge in a Pear Tree'
    # but 'and a Partridge in a Pear Tree'
    "and a",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve"
  ]

  GIFTS = [
    "Partridge in a Pear Tree",
    "Turtle Doves",
    "French Hens",
    "Calling Birds",
    "Gold Rings",
    "Geese-a-Laying",
    "Swans-a-Swimming",
    "Maids-a-Milking",
    "Ladies Dancing",
    "Lords-a-Leaping",
    "Pipers Piping",
    "Drummers Drumming"
  ]

  def self.list_gifts(gifts)
    gifts.join(', ')
  end

  def self.song
    lyrics = []
    received_gifts = []

    GIFTS.each.with_index do |gift, index|

      received_gifts.insert(0, "#{CARDINAL_NUMBERS[index]} #{gift}#{'.' if index == 0}")

      if index == 0
        lyrics.append("On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.")
        next
      end

      lyric = "On the #{ORDINAL_NUMBERS[index]} day of Christmas my true love gave to me: #{list_gifts received_gifts}"
      lyrics.append lyric
    end

    lyrics.join("\n\n") << "\n"
  end

end

puts TwelveDays.song

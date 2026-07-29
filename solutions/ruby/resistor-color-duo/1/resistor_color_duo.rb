=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo

  BAND_COLORS = {
    black: "0",
    brown: "1",
    red: "2",
    orange: "3",
    yellow: "4",
    green: "5",
    blue: "6",
    violet: "7",
    grey: "8",
    white: "9"
  }

  def self.value(color_duo)
    first_color, second_color = color_duo
    
    (BAND_COLORS[first_color.to_sym] + BAND_COLORS[second_color.to_sym]).to_i
  end
end


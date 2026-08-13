require_relative 'si'

class ResistorColorTrio

  COLORS_MAP = {
    "black" => 0,
    "brown" => 1,
    "red" => 2,
    "orange" => 3,
    "yellow" => 4,
    "green" => 5,
    "blue" => 6,
    "violet" => 7,
    "grey" => 8,
    "white" => 9
  }

  def initialize(colors)
    first = COLORS_MAP[colors[0]].to_s
    second = COLORS_MAP[colors[1]].to_s
    @number = (first + second).to_i
    @exponent = COLORS_MAP[colors[2]].to_i
  end

  def label
    "Resistor value: #{SI.add_unit(@number * (10 ** @exponent), "ohms")}"
  end
end

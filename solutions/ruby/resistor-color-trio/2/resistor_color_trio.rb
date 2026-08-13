module SI
  PREFIXES = {
    9 => "giga",
    6 => "mega",
    3 => "kilo"
  }.freeze

  def self.add_unit(number, unit)
    exponent, prefix = PREFIXES.find { |exp, _| number >= 10**exp }

    if exponent
      "#{number / (10**exponent)} #{prefix}#{unit}"
    else
      "#{number} #{unit}"
    end
  end
end

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

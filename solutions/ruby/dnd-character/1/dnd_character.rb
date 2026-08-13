=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter
  def self.modifier(constitution)
    (constitution - 10) / 2
  end

  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints

  def initialize
    @strength = attribute
    @dexterity = attribute
    @constitution = attribute
    @intelligence = attribute
    @wisdom = attribute
    @charisma = attribute
    @hitpoints = 10 + DndCharacter.modifier(@constitution)
  end

  private
  def attribute
    dice_rolls = [
      rand(1..6),
      rand(1..6),
      rand(1..6),
      rand(1..6),
    ]

    biggest_numbers = dice_rolls.max(3)
    biggest_numbers.sum
  end
end

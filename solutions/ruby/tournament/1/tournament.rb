=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end

class TallyResults

  attr_reader :teams

  def initialize
    @teams = {}
  end

  def add_team(team_name)
    @teams[team_name] = Team.new(team_name) if !self.include?(team_name)
  end

  def include?(team_name)
    @teams.has_key?(team_name)
  end

  def victory_for!(team_name)
    @teams[team_name].win!
  end

  def draw_for!(team_name)
    @teams[team_name].draw!
  end

  def defeat_for!(team_name)
    @teams[team_name].lose!
  end

  def table
    title_row = "Team                           | MP |  W |  D |  L |  P\n"
    lines = []

    if @teams.empty? then return title_row end

    sorted_results = @teams.values.sort{|a, b| a.points == b.points ? a.name <=> b.name : b.points <=> a.points}


    sorted_results.each do |team|
    line = sprintf("%-30s | %2d | %2d | %2d | %2d | %2d", team.name, team.matches_played, team.victories, team.draws, team.defeats, team.points)
    lines << line
    end

    title_row + lines.join("\n") + "\n"
  end
end

class Team

  attr_reader :name, :points, :victories, :draws, :defeats

  def initialize(name)
    @name = name
    @points = 0
    @victories = 0
    @draws = 0
    @defeats = 0
  end

  def win!
    @points += 3
    @victories += 1
  end

  def draw!
    @points += 1
    @draws += 1
  end

  def lose!
    @defeats += 1
  end

  def matches_played
    victories + draws + defeats
  end
end

class Tournament

  def self.tally(matches)

    tally_results = TallyResults.new

    matches.each_line do |line|

      if line.strip.empty? then next end

      host, visitant, result = line.split(';').map{ |line| line.strip("\n")}

      tally_results.add_team host
      tally_results.add_team visitant

      case result
      when 'win'
        tally_results.victory_for! host
        tally_results.defeat_for! visitant
      when 'draw'
        tally_results.draw_for! host
        tally_results.draw_for! visitant
      when 'loss'
        tally_results.defeat_for! host
        tally_results.victory_for! visitant
      else
        raise TypeError.new("Unknown match result: #{result}")
      end
    end

    tally_results.table

  end
end

class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    # Add one to skip the ':' character
    level_end = @line.index(':') + 1
    message = @line[level_end..]
    message.strip()
  end

  def log_level
    # Substract two to ignore the ']:' characters
    level_end = @line.index(':') - 2
    level = @line[1..level_end]
    level.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end

puts LogLineParser.new('[ERROR]: Invalid operation').reformat

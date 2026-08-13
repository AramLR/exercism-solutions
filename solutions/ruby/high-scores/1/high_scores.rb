class HighScores
  include Enumerable

  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.max(3)
  end

  def latest_is_personal_best?
    latest == personal_best
  end

  def each
    return enum_for unless block_given?

    @scores.each {|score| yield score}
  end
end

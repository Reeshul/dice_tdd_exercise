class Dice

  def initialize
    @history = []
  end

  def roll(n = 1)
    rolled_results = []
    n.times {
      result = rand(6) + 1
      @history << result
      rolled_results << result
    }
    rolled_results
  end

  def view_history
    @history
  end

  def current_score
    @history.sum
  end

end
class Voting

  def initialize(candidates, strategy)
    @candidates = candidates
    @strategy = strategy
    @ballots = []
  end

  def vote(ballot)
    @ballots.push ballot
  end

  def results
    @strategy.results(@ballots)
  end

end
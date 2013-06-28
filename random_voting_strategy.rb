class RandomVotingStrategy

  def results(ballots)
    ballots.shuffle.map(&:votes)
  end

end
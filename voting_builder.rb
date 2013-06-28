class VotingBuilder

  def initialize(candidates)
    @candidates = candidates
  end

  def strategy
    raise 'You need to impolement builder with strategy'
  end

  def build
    Voting.new(@candidates, strategy)
  end

end
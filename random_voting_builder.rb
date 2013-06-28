require_relative 'voting_builder'
require_relative 'random_voting_strategy'

class RandomVotingBuilder < VotingBuilder

  def strategy
    RandomVotingStrategy.new
  end

end
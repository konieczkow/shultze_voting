class Ballot

  attr_reader :votes

  def initialize(votes)
    @votes = votes
  end

  def add_vote(vote)
    votes.push vote
  end
end
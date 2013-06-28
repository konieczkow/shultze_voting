require_relative 'ballot'
require_relative 'candidate'
require_relative 'vote'
require_relative 'voting'
require_relative 'voting_builder'
require_relative 'random_voting_builder'

candidates = [
    Candidate.new('Walesa'),
    Candidate.new('Oleksy'),
    Candidate.new('Kwasniewski'),
    Candidate.new('Kaczynski')
]

user_1_votes = [
    Vote.new(1, candidates[1]),
    Vote.new(2, candidates[0]),
    Vote.new(3, candidates[2]),
    Vote.new(4, candidates[3]),
]

user_2_votes = [
    Vote.new(1, candidates[1]),
    Vote.new(2, candidates[2]),
    Vote.new(3, candidates[3]),
    Vote.new(4, candidates[4]),
]

user_3_votes = [
    Vote.new(1, candidates[3]),
    Vote.new(2, candidates[2]),
    Vote.new(3, candidates[1]),
    Vote.new(4, candidates[0]),
]

ballots = [
    Ballot.new(user_1_votes),
    Ballot.new(user_2_votes),
    Ballot.new(user_3_votes)
]

voting = RandomVotingBuilder.new(candidates).build
ballots.each do |ballot|
  voting.vote(ballot)
end

puts voting.results
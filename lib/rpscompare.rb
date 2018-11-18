module RPSCompare
  RPS = {rock: 'Scissors',
      paper: 'Rock',
      scissors: 'Paper'}

  def self.compare(move1,move2)
    compare = RPS.select do |key, hash| 
      hash[RPS[move1.downcase.to_sym]] == move2.capitalize 
    end
    self.result(compare,move1,move2)
  end

  def self.result(compare,move1,move2)
    return 'draw' if move1.downcase == move2.downcase
    return 'lose' if compare.empty?
    return 'win' if !compare.empty?
  end

end

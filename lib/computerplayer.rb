class ComputerPlayer

  def self.moves
    ["rock", "paper", "scissors"]
  end

  def self.random_move
    self.moves[rand(0...self.moves.length)]
  end

end

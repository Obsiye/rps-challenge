class ComputerPlayer

  def self.moves
    ["Rock", "Paper", "Scissors"]
  end

  def self.random_move
    moves[random]
  end

  def self.random
    rand(0..2)
  end

end

class Game
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def compare(move1,move2 = ComputerPlayer.random_move)
    
  end

end

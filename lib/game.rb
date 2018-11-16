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

end

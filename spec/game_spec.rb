describe Game do
  let(:game_class) { Game }
  let(:player) { double(:player, :name => 'John', :move => 'Rock', :downcase => 'rock', :capitalize => 'Rock', :to_sym => :rock) }

  before(:each) do
    game_class.create(player)
    @game = game_class.instance
  end

  it 'should store players' do
    expect(@game.player.name).to eq 'John'
  end

  context 'Lose' do
    it 'should return lose for Rock vs Paper' do
      computer_player = double(:computer_player, :move => 'Paper', :capitalize => 'Paper', :downcase => 'paper')
      @game.compare(player, computer_player)
      expect(@game.result).to eq 'lose'
    end
  end

  context 'Draw' do
    it 'should return draw for Rock vs Rock' do
      computer_player = double(:computer_player, :move => 'Rock', :capitalize => 'Rock', :downcase => 'rock')
      @game.compare(player, computer_player)
      expect(@game.result).to eq 'draw'
    end
  end

  context 'Win' do
    it 'should return win for Rock vs Scissors' do
      computer_player = double(:computer_player, :move => 'Scissors', :capitalize => 'Scissors', :downcase => 'scissors')
      @game.compare(player, computer_player)
      expect(@game.result).to eq 'win'
    end
  end

end

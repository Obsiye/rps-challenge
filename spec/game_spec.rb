describe Game do
  let(:game_class) { Game }
  let(:player) { double(:player, :name => 'John', :move => 'Rock') }

  before(:each) do
    game_class.create(player)
    @game = game_class.instance
  end

  it 'should store players' do
    expect(@game.player.name).to eq 'John'
  end

  context 'Rock vs Paper' do
    it 'should return win for Rock vs Paper' do
      computer_player = double()
      allow(computer_player).to receive(:move) { 'Paper' }
      
      expect(@game.compare(player, computer_player)).to eq 'won'
    end
  end

end

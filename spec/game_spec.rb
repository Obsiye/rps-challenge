describe Game do
  let(:game_class) { Game }
  let(:player) { double(:player, :name => 'John', :move => 'Rock', :downcase => 'rock',:capitalize => 'Rock',:to_sym => :rock) }

  before(:each) do
    game_class.create(player)
    @game = game_class.instance
  end

  it 'should store players' do
    expect(@game.player.name).to eq 'John'
  end

  context 'Rock vs Paper' do
    it 'should return lose for Rock vs Paper' do
      computer_player = double(:computer_player,:move => 'Paper', :capitalize => 'Paper', :downcase => 'paper')

      expect(@game.compare(player, computer_player)).to eq 'lose'
    end
  end

end

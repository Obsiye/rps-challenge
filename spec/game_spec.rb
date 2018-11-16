describe Game do
  let(:game_class) { Game }
  let(:player) { double(:player, :name => 'John') }

  it 'should store players' do
    game_class.create(player)
    game = game_class.instance
    expect(game.player.name).to eq 'John'
  end

end

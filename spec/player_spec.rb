describe Player do
  let(:player_class) { Player }

  it 'should store players\' name' do
    player1 = Player.new('John')
    expect(player1.name).to eq 'John'
  end

end

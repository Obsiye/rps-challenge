describe Player do
  let(:player) { Player.new('John') }

  it 'should store players\' name' do
    expect(player.name).to eq('John')
  end

  it 'should store players\' move' do
    player.move = 'Rock'
    expect(player.move).to eq 'Rock'
  end

end

require 'computerplayer'

describe ComputerPlayer do

  let(:computer) { ComputerPlayer }

  it 'should return a move that is either rock or paper or scissors' do
    move = computer.random_move
    expect(["Rock", "Paper", "Scissors"]).to include(move)
  end

  it 'should return a random move' do
    
  end

end

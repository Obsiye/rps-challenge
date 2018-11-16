require 'computerplayer'

describe ComputerPlayer do

  let(:computer) { ComputerPlayer }

  it 'should return a random move that is either rock or paper or scissors' do
    move = computer.random_move
    expect(["rock", "paper", "scissors"]).to include(move)
  end

end

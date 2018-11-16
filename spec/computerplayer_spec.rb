require 'computerplayer'

describe ComputerPlayer do

  let(:computer) { ComputerPlayer }

  it 'should return a random move that is either rock or paper or scissors' do
    move = computer.move
    expect(move).to be_in(["rock", "paper", "scissors"])
  end

end

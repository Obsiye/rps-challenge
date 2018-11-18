require 'sinatra/base'
require './lib/player.rb'
require './lib/computerplayer.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @result = @game.result
    erb(:play)
  end

  post '/action' do
    @game.player.move = params[:player_choice]
    @game.compare(@game.player.move,ComputerPlayer.random_move)
    redirect '/play'
  end

end

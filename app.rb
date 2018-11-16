require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    @name = @game.player.name
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    Game.create(player)
    redirect '/play'
  end

end

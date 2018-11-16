require 'sinatra/base'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    @name = session[:name]
    erb(:index)
  end

  post '/name' do
    
    redirect '/'
  end

end

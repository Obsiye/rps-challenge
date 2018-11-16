require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    @name = session[:name]
    erb(:index)
  end

  post '/name' do
    
    redirect '/'
  end

end

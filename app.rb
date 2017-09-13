require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect '/play'
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    @p1HP = 100
    @p2HP = 100
    erb(:play)
  end

  get '/attack_confirmation' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb(:attack_confirmation)
  end

  #
  # get '/attack' do
  #   @name1 = session[:name1]
  #   @name2 = session[:name2]
  #   erb(:attack)
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
  end

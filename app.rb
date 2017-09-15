require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions



  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $player1 = Player.new(params[:name1], params[:player1hitpoints])
    $player2 = Player.new(params[:name2], params[:player2hitpoints])

    redirect '/play'
  end




  get '/play' do

    @player1 = $player1.name
    @player2 = $player2.name

    @p1HP = $player1.starting_points
    @p2HP = $player2.starting_points

    erb(:play)
  end

  get '/attack_confirmation' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2hitpoints = $player2.attack
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

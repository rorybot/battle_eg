require 'sinatra/base'
require './lib/player'
require './lib/game'

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

  post '/attack_value' do

    session[:attack_value] = params[:attack_value]
    redirect '/attack_confirmation'

  end

  get '/attack_confirmation' do
    @player1name = $player1.name
    @player2name = $player2.name
    @player1 = $player1
    @player2 = $player2
    @attack_value = session[:attack_value]
    gamer = Game.new
    @player2hitpoints = gamer.attack_player(@player2, @attack_value)
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

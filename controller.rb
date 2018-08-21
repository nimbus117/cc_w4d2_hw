require 'sinatra'
require 'sinatra/contrib/all'
require_relative 'models/game.rb'


get '/:p1/:p2' do
  @game_result = Game.play(params[:p1], params[:p2])
  erb :result
end

get '/' do
  erb :home
end

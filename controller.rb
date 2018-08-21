require 'sinatra'
require 'sinatra/contrib/all'
require_relative 'models/game.rb'

get '/:p1/:p2' do
  Game.play(params[:p1], params[:p2])
end

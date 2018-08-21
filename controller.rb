require 'sinatra'
require 'sinatra/contrib/all'

get '/:p1/:p2' do

  valid_answers = ['rock', 'paper', 'scissors']
  p1 = params[:p1].downcase
  p2 = params[:p2].downcase

  if !(valid_answers.include? p1) || !(valid_answers.include? p2)
    "Invalid input #{p1} or #{p2}"
  elsif p1 == p2
    "Draw"
  elsif (p1 == 'rock' && p2 == 'scissors') || (p1 == 'paper' && p2 == 'rock') || (p1 == 'scissors' && p2 == 'paper')
    "#{p1} wins"
  else
    "#{p2} wins"
  end


end

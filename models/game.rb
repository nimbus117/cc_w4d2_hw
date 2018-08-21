class Game

  def Game.play(p1, p2)
    valid_answers = ['rock', 'paper', 'scissors']
    p1.downcase!
    p2.downcase!

    if !(valid_answers.include? p1) || !(valid_answers.include? p2)
      "invalid"
    elsif p1 == p2
      "draw"
    elsif (p1 == 'rock' && p2 == 'scissors') || (p1 == 'paper' && p2 == 'rock') || (p1 == 'scissors' && p2 == 'paper')
      "#{p1} wins"
    else
      "#{p2} wins"
    end
  end
end

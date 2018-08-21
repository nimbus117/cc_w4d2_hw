class Game

  def Game.play(p1, p2)

    p1.downcase!
    p2.downcase!

    valid_answers = ['rock', 'paper', 'scissors']

    case
    when !(valid_answers.include? p1) || !(valid_answers.include? p2)
      "invalid"
    when p1 == p2
      "draw"
    when (p1 == 'rock' && p2 == 'scissors') || (p1 == 'paper' && p2 == 'rock') || (p1 == 'scissors' && p2 == 'paper')
      "Player 1 wins by playing #{p1}"
    else
      "Player 2 wins by playing #{p2}"
    end
  end
end

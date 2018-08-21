require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game.rb')


class GameTest < MiniTest::Test
  def test_rock_beats_scissors
    actual = Game.play('rock', 'scissors')
    assert_equal('rock wins', actual)
  end
  def test_paper_beats_rock
    actual = Game.play('paper', 'rock')
    assert_equal('paper wins', actual)
  end
  def test_scissors_beats_paper
    actual = Game.play('scissors', 'paper')
    assert_equal('scissors wins', actual)
  end
  def test_scissors_beaten_by_rock
    actual = Game.play('scissors', 'rock')
    assert_equal('rock wins', actual)
  end
  def test_rock_beaten_by_paper
    actual = Game.play('rock', 'paper')
    assert_equal('paper wins', actual)
  end
  def test_paper_beaten_by_scissors
    actual = Game.play('paper', 'scissors')
    assert_equal('scissors wins', actual)
  end
  def test_draw
    actual = Game.play('paper', 'paper')
    assert_equal('draw', actual)
  end
  def test_invalid_1
    actual = Game.play('paper', 'stone')
    assert_equal('invalid', actual)
  end
  def test_invalid_2
    actual = Game.play('spock', 'rock')
    assert_equal('invalid', actual)
  end
end

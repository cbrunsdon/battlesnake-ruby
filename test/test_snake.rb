require "minitest/autorun"
require 'slytherin/snake'

class TestSnake < Minitest::Test

  def makesnake coords
    Slytherin::Snake.new 'snakey', coords
  end

  def test_head
    snake = makesnake [[1,1], [1,2]]

    assert_equal snake.head, [1,1]
  end

  def test_body
    snake = makesnake [[1,1], [1,2]]

    assert_equal snake.body, [[1,2]]
  end

  def test_body_when_overlap
    snake = makesnake [[1,1], [1,1], [1,2]]

    assert_equal snake.body, [[1,2]]
  end


end

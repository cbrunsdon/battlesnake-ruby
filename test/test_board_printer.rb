require "minitest/autorun"
require 'slytherin/board_printer'
require 'slytherin/snake'
require 'slytherin/board'

class TestBoardPrinter < Minitest::Test

  def three_by_three_board snakes=[], food=[]
    Slytherin::Board.new 3, 3, snakes, food
  end

  def test_print_empty_3x3
    board =
      "-----\n" +
      "|   |\n" +
      "|   |\n" +
      "|   |\n" +
      "-----"
    assert_equal Slytherin::BoardPrinter.new.print(three_by_three_board), board
  end

  def test_print_food_3x3
    board =
      "-----\n" +
      "|   |\n" +
      "| f |\n" +
      "|   |\n" +
      "-----"

    assert_equal Slytherin::BoardPrinter.new.print(three_by_three_board([], [[1,1]])), board
  end

  def test_print_snake_head
    board =
      "-----\n" +
      "|   |\n" +
      "| h |\n" +
      "|   |\n" +
      "-----"

    snake = Slytherin::Snake.new('snakey', [[1,1]])
    assert_equal Slytherin::BoardPrinter.new.print(three_by_three_board([snake], [])), board
  end

end

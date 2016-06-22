require "minitest/autorun"
require 'slytherin/board_printer'
require 'slytherin/board'

class TestBoardPrinter < Minitest::Test

  def three_by_three_board snakes=[], food=[]
    Slytherin::Board.new 3, 3, snakes, food
  end

  def test_print_3x3
    board =
      "-----\n" +
      "|   |\n" +
      "|   |\n" +
      "|   |\n" +
      "-----"
    assert_equal Slytherin::BoardPrinter.new.print(three_by_three_board), board
  end

end

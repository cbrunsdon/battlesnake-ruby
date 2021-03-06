require "minitest/autorun"
require 'slytherin/move_deserializer'

class TestMoveDeserializer < Minitest::Test

  def deserializer
    json_payload = {
      "food"=>[[1, 1]],
      "game_id"=>"laughable-recipe",
      "snakes"=>[
        {"name"=>"seekaybot",
         "url"=>"http://192.168.0.14:4567",
         "taunt"=>"battlesnake-ruby",
         "color"=>"#ff0000",
         "coords"=>[[2, 0], [2, 0], [2, 0]],
         "head_url"=>"http://www.battlesnake.io/static/img/default_head.gif"}
      ],
      "board"=>[
        [
          {
            "state"=>"empty", "snake"=>nil
          },
          {
            "state"=>"empty", "snake"=>nil
          },
          {
            "state"=>"empty", "snake"=>nil
          }
        ],
        [
          {
            "state"=>"empty", "snake"=>nil
          },
          {
            "state"=>"food", "snake"=>nil
          },
          {
            "state"=>"empty", "snake"=>nil
          }
        ],
        [
          {
            "state"=>"head", "snake"=>"seekaybot"
          },
          {
            "state"=>"empty", "snake"=>nil
          },
          {
            "state"=>"empty", "snake"=>nil
          }
        ]
      ],
      "turn"=>0}

    deserializer = Slytherin::MoveDeserializer.new json_payload
  end

  def board
    deserializer.board
  end

  def snakes
    deserializer.snakes
  end

  def test_deserializer_board_returns_a_board
    assert_equal board.class, Slytherin::Board
  end

  def test_board_height
    assert_equal board.height, 3
  end

  def test_board_width
    assert_equal board.width, 3
  end

  def test_snake_count
    assert_equal snakes.count, 1
  end

  def test_first_snake_length
    assert_equal snakes.first.length, 1
  end

  def test_food_length
    assert_equal board.food.length, 1
  end

  def test_snake_length
    assert_equal snakes.first.coords.length, 3
  end

  def test_snake_head
    assert_equal snakes.first.head, [2,0]
  end
end

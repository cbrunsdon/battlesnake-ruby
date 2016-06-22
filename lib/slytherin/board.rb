module Slytherin
  class Board
    attr_reader :snakes

    def initialize spaces, snakes
      @spaces = spaces
      @snakes = snakes
    end

    def height
      @spaces.length
    end

    def width
      (@spaces.first || []).length
    end

    def my_snake
      snakes.detect { |y| y.name == "slytherin" }
    end

    def recommend(snake)
      snake.direction
    end
  end
end

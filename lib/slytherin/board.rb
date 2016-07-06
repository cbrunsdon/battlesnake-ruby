module Slytherin
  class Board
    attr_reader :snakes, :food
    attr_reader :height, :width

    def initialize width, height, snakes, food
      @width = width
      @height = height
      @snakes = snakes
      @food = food
    end

    def my_snake
      snakes.detect { |y| y.name == "slytherin" }
    end

    def recommend(snake)
      "up"
    end
  end
end

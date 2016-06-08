module Slytherin
  class Board
    def initialize spaces
      @spaces = spaces
    end

    def height
      @spaces.length
    end

    def width
      @spaces.first.length
    end
  end
end

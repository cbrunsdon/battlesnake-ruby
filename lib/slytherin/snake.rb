module Slytherin
  class Snake
    attr_reader :name, :coords

    def initialize name, coords
      @name = name
      @coords = coords
    end

    def length
      coords.uniq.length
    end

    def head
      coords.first
    end

  end
end

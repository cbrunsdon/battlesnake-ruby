module Slytherin
  class Snake
    def initialize snake_json
      @json = snake_json
    end

    def length
      coords.uniq.length
    end

    def direction
    end

    private
    def coords
      @json["coords"]
    end
  end
end

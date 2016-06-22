require 'slytherin/board'
require 'slytherin/snake'

module Slytherin
  class MoveDeserializer
    attr_reader :json
    def initialize json_payload
      @json = json_payload
    end

    def snakes
      @json["snakes"].map do |snake|
        Slytherin::Snake.new snake
      end
    end

    def food
      @json["food"]
    end

    def board
      Slytherin::Board.new json["board"].length, json["board"].first.length, snakes, food
    end
  end
end

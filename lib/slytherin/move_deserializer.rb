require 'slytherin/board'

module Slytherin
  class MoveDeserializer
    attr_reader :json
    def initialize json_payload
      @json = json_payload
    end

    def board
      board = Slytherin::Board.new json["board"]
      board
    end
  end
end

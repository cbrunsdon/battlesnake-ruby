module Slytherin
  class BoardPrinter
    def initialize
    end

    def print(board)
      [
        "-" * (board.width + 2),
        board.height.times.map { |height|
          '|'  + (' ' * board.width ) + '|'
        },
        "-" * (board.width + 2)
      ].flatten.join("\n")
    end
  end
end

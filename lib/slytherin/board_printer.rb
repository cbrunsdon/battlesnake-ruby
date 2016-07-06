module Slytherin
  class BoardPrinter
    def initialize
    end

    def print(board)
      [
        "-" * (board.width + 2),
        board.height.times.map { |height|
          '|'  + board.width.times.map { |width|
            space(board, width, height) }.join('') + '|'
        },
        "-" * (board.width + 2)
      ].flatten.join("\n")
    end

    private
    def space(board, width, height)
      return 'f' if board.food.select { |food| food == [width, height] }.any?
      return 'h' if board.snakes.select { |snake| snake.head == [width, height] }.any?
      ' '
    end
  end
end

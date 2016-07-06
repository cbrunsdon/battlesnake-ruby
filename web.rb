require 'sinatra'
require 'json'

require 'slytherin/move_deserializer'
require 'slytherin/board_printer'

get '/' do
    responseObject = {
        "color"=> "#fff000",
        "head_url"=> "url/to/your/img/file"
    }

    return responseObject.to_json
end

post '/start' do
    requestBody = request.body.read
    requestJson = requestBody ? JSON.parse(requestBody) : {}

    # Get ready to start a game with the request data

    # Dummy response
    responseObject = {
      name: 'slytherin',
      taunt: "battlesnake-ruby",
      color: '#ff0000'
    }

    return responseObject.to_json
end

post '/move' do
    requestBody = request.body.read
    requestJson = requestBody ? JSON.parse(requestBody) : {}

    # Calculate a move with the request data
    puts requestJson.inspect

    deserializer = Slytherin::MoveDeserializer.new requestJson
    board = deserializer.board

    puts Slytherin::BoardPrinter.new.print(board)

    #board.my_snake
    #board.recommend(my_snake)

    # Dummy response
    responseObject = {
        "move" => "up",
        "taunt" => "going north!",
    }

    return responseObject.to_json
end

post '/end' do
    requestBody = request.body.read
    requestJson = requestBody ? JSON.parse(requestBody) : {}

    # No response required
    responseObject = {}

    return responseObject.to_json
end

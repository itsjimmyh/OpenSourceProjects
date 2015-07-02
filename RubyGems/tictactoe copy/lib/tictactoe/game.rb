module Tictactoe
  class Game

    attr_reader :players, :board, :current_player, :other_player

    def initialize(players, board = Board.new)
      @players = players
      @board = board
      @current_player, @other_player = randomize(players)
    end

    def randomize?
      rand <= 0.5
    end

    def randomize(players)
      if randomize?
        players[0], players[1] = players[1], players[2]
        return players
      else
        return players
      end
    end

    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end

    def solicit_move
      "#{ @current_player.name }: Enter a number between 1 and 9 to make your move"
    end

  end
end

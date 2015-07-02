require 'spec_helper'

module Tictactoe
  describe Game do

    let (:bob) { Player.new({ color: "X", name: "bob" }) }
    let (:frank) { Player.new({ color: "O", name: "frank" }) }
    let (:players) { [frank, bob] }
    let (:game) { Game.new(players) }
    let (:current_player) { game.current_player }
    let (:other_player) { game.other_player }

    context "#initialize" do

      it "randomly selects a current_player" do
        expect(game.current_player).to eq bob
        expect(game.other_player).to eq frank
      end

      it "randomly selects other player" do
        expect(game.other_player).to eq frank
      end
    end

    context "#switch_players" do
      it "will set @current_player to @other_player" do
        new_current_player = other_player
        game.switch_players

        expect(game.current_player).to eq new_current_player
      end

      it "will set @other_player to @current_player" do
        new_other_player = current_player
        game.switch_players

        expect(game.other_player).to eq new_other_player
      end
    end

    context "#solicit_move" do
      it "asks the current_player to make a move" do
        game.instance_variable_set(:@current_player, bob)
        expected = "bob: Enter a number between 1 and 9 to make your move"

        expect(game.solicit_move).to eq expected
      end
    end

  end
end

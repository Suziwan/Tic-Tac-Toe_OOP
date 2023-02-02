require 'bundler'
Bundler.require

require_relative 'lib/run/player'
require_relative 'lib/run/game'
require_relative 'lib/run/board'
# require_relative 'lib/run/board_case'

# require_relative 'lib/org/show'
# require_relative 'lib/org/appli'

game = Game.new
#game.start_game
game.choice_player2

require 'bundler'
Bundler.require

require_relative 'src/player'
require_relative 'src/game'


player_a = Player.new('joe', 'x')
player_b = Player.new('taxi', 'o')

game = Game.new(player_a, player_b)


game.start()
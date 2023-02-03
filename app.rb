require_relative 'lib_new/player'
require_relative 'lib_new/game'

puts "Player 1, what is your name ?"
print "> "
player_a = Player.new(gets.chomp, 'X')
puts "Player 2, what is your name ?"
print "> "
player_b = Player.new(gets.chomp, 'O')

game = Game.new(player_a, player_b)
game.run
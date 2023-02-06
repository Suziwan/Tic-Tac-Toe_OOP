require_relative 'lib/player'
require_relative 'lib/game'

loop do
  puts "Player 1, what is your name ?"
  print "> "
  player_a = Player.new(gets.chomp, 'X')
  puts "Player 2, what is your name ?"
  print "> "
  player_b = Player.new(gets.chomp, 'O')

  game = Game.new(player_a, player_b)
  game.run

  puts "Do you want to play again ?"
  print "> "
  answer = gets.chomp.downcase
  break if answer != "yes"
  system "clear"
end


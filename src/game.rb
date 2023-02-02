require_relative 'board'

class Game
  def initialize(player_a, player_b)
    @player_a = player_a
    @player_b = player_b
    @board = Board.new()
  end
end

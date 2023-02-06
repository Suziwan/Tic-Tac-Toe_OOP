require_relative 'board'

class Game
  def initialize(player_a, player_b)
    @player_a = player_a
    @player_b = player_b
    @board = Board.new

    @column_mapping = {'A'=> 0, 'B'=> 1, 'C'=> 2, 'a'=> 0, 'b'=> 1, 'c'=> 2}
    @line_mapping = {'1'=> 0, '2'=> 1, '3'=> 2}  
  end

  def run
    display_board
    while true
      break if play_turn(@player_a)
      break if play_turn(@player_b)
    end

    end_message = "It's a draw !"
    [@player_a, @player_b].each do |player|
      end_message = "Congratulations #{player.name}! You won =D \n" if won?(player)
    end

    puts end_message
  end

  def play_turn(player)
    play_move(player)
    display_board
    return won?(player) || @board.full?
  end

  def play_move(player)
    puts
    puts "#{player.name}, choose your next move : "
    print "> "
    input = gets.chomp
    col = input.size < 2 ? '' : @column_mapping.fetch(input[0], '')
    line = input.size < 2 ? '' : @line_mapping.fetch(input[1], '')

    if !line.is_a?(Numeric) || !col.is_a?(Numeric) || !@board.update_cell(line.to_i, col.to_i, player.symbol) 
      puts "Wrong input, try again"
      play_move(player)
    end
  end

  def won?(player)
    return @board.lined_up?(player.symbol)
  end

  def display_board
    puts @board.state
  end
end

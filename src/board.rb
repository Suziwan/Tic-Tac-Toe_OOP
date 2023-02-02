class Board

    EMPTY = ' '

    def initialize
        @board = [[EMPTY, EMPTY, EMPTY], [EMPTY, EMPTY, EMPTY], [EMPTY, EMPTY, EMPTY]] 
    end

    def update_cell(x, y, symbol)
        return false if @board[x][y] != EMPTY
        
        @board[x][y] = symbol
        return true
    end

    def full?
         return !(@board.flatten.include? EMPTY)
    end

    def lined_up?(symbol)
                  
      return true if (@board[0][0] == symbol && @board[0][1] == symbol && @board[0][2] == symbol) # ligne 1
      return true if (@board[1][0] == symbol && @board[1][1] == symbol && @board[1][2] == symbol) # ligne 2
      return true if (@board[2][0] == symbol && @board[2][1] == symbol && @board[2][2] == symbol) # ligne 3
        
      return true if (@board[0][0] == symbol && @board[1][0] == symbol && @board[2][0] == symbol) # A
      return true if (@board[0][1] == symbol && @board[1][1] == symbol && @board[2][1] == symbol) # B
      return true if (@board[0][2] == symbol && @board[1][2] == symbol && @board[2][2] == symbol) # C

      return true if (@board[0][0] == symbol && @board[1][1] == symbol && @board[2][2] == symbol) # diagonale 1
      return true if (@board[0][2] == symbol && @board[1][1] == symbol && @board[2][0] == symbol) # diagonale 2

      return false
    end

    def display
        puts "   A     B     C"
        puts "      |     |     "
        puts "1  #{@board[0][0]}  |  #{@board[0][1]}  |  #{@board[0][2]}  "
        puts " _____|_____|_____"
        puts "      |     |     "
        puts "2  #{@board[1][0]}  |  #{@board[1][1]}  |  #{@board[1][2]}  "
        puts " _____|_____|_____"
        puts "      |     |     "
        puts "3  #{@board[2][0]}  |  #{@board[2][1]}  |  #{@board[2][2]}  "
        puts "      |     |     "
      end
end

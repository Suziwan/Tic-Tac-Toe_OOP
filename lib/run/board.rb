# Board : c'est le plateau. Il doit y avoir une instance de cette classe lors d'une partie.

# À l'initialisation du plateau, il doit instancier immédiatement 9 BoardCases (une par case).

# Variables d'instance : le Board doit embarquer les 9 BoardCase du jeu afin de pouvoir les lire 
# et les modifier facilement. Il faut les lui attribuer sous forme d'un array ou d'un hash. 
# Aussi, il est utile de compter le nombre de coup joué pour identifier facilement si on arrive au 9ème 
# coup sans vainqueur.

# Méthodes : le Board va s'occuper de faire le lien entre les BoardCases et le Game : il change les valeurs 
# des BoardCases (de " " à "x" ou "o") et vérifie en fonction de la combinaison des BoardCases si la partie 
# est finie (= un joueur a gagné ou bien les 9 cases sont remplies sans vainqueur).

#require_relative 'game'
#require_relative 'board_case'

class Board
  attr_accessor :board

  def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
  end

  def display_board
    puts "   A     B     C"
    puts "      |     |     "
    puts "1  #{board[0]}  |  #{board[1]}  |  #{board[2]}  "
    puts " _____|_____|_____"
    puts "      |     |     "
    puts "2  #{board[3]}  |  #{board[4]}  |  #{board[5]}  "
    puts " _____|_____|_____"
    puts "      |     |     "
    puts "3  #{board[6]}  |  #{board[7]}  |  #{board[8]}  "
    puts "      |     |     "
  end

  def modify_board
    
  end

end

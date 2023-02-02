# Game : C'est le jeu. Elle initialise tout, lance une partie (qui se termine avec une victoire ou un nul), 
# permet de jouer un tour, de chercher si la partie est finie, etc.

# Cette classe s'occupe de gérer toute la partie. À l'initialisation elle crée 2 instances de Player, 
# et 1 instance de Board.

# Variables d'instance : tu peux lui rattacher les 2 players (sous forme d'un array), le Board, 
# et des informations annexes comme "quel joueur doit jouer ?", "quel est le statut de la partie 
# (en cours ? player1 a gagné ? etc.)", etc.

# Méthodes : Game permet de jouer un tour (demande au joueur ce qu'il veut faire et rempli la case), 
# s'occupe de finir la partie si un joueur a gagné et propose aux joueurs de faire une nouvelle partie 
# ensuite.

require_relative 'board'
require_relative 'player'

class Game
  attr_accessor :game_board, :player1, :player2

  def initialize
    @game_board = Board.new
    puts "Player 1, what is your name ?"
    print "> "
    name_of_player1 = gets.chomp
    @player1 = Player.new(name_of_player1, "X")
    puts "Welcome #{player1.name} !"
    puts
    puts "Player 2, what is your name ?"
    print "> "
    name_of_player2 = gets.chomp
    @player2 = Player.new(name_of_player2, "O")
    puts "Welcome #{player2.name} !"
    puts
  end

  def start_game
    puts "Let the battle begin !"
    puts
    @game_board.display_board
    puts
  end

  # def choice(player)
  #   #puts "#{player.name} will play with #{player.symbol}"
  #   puts "Which case do you choose ?"
  #     choice = gets.chomp
  #     case choice
  #     when "A1"
  #       board[0] = "#{player.symbol}"
  #     when "A2"
  #       board[1] = "#{player.symbol}"
  #     when "A3"
  #       board[2] = "#{player.symbol}"
  #     when "B1"
  #       board[3] = "#{player.symbol}"
  #     when "B2"
  #       board[4] = "#{player.symbol}"
  #     when "B3"
  #       board[5] = "#{player.symbol}"
  #     when "C1"
  #       board[6] = "#{player.symbol}"
  #     when "C2"
  #       board[7] = "#{player.symbol}"
  #     when "C3"
  #       board[8] = "#{player.symbol}"
  #     else
  #       puts "Wrong answer, choose a correct case"
  #     end
  #     @game_board.display_board
  # end
  #end

end
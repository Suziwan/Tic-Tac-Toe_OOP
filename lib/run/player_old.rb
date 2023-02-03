# Player : Ce sont les joueurs. Il doit y avoir 2 instances de cette classe lors d'une partie.
# Variables d'instance : un joueur a un nom (habile) et un symbole ("x" ou "o").

class Player 
  attr_accessor :name, :symbol

  def initialize(name_of_player, symbol_of_player)
    @name = name_of_player
    @symbol = symbol_of_player
  end

end
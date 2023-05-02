# Setting up the game
# 1.) Going to need to require our player and question to make the game
# 2.) Need to set up a game class that initalizes intro step
#   - First steps we need to record players names with gets.chomp
#   - After recieving terminal input set the player 
# 3.) Need to make a question in the game (so make a func) and then check their answer
#   - In create question we need to create question, puts the correct message 

require './player.rb'
require './question.rb'

class Game

  def initalize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @player_turn = @player1
  end
end 
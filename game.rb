# Setting up the game
# 1.) Going to need to require our player and question to make the game
# 2.) Need to set up a game class that initalizes intro step
#   - First steps we need to record players names with gets.chomp
#   - After recieving terminal input set the player 

require './player.rb'
require './question.rb'

class Game
  def initalize
    puts "What is players name?"
    player = gets.chomp
    @player = Player.new(player)
  end
end 
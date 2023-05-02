require './question.rb'

class Game

  def initialize
    puts "What is player 1's name?"
    player1 = gets.chomp
    @player1 = Player.new(player1)
    puts "What is player 2's name?"
    player2 = gets.chomp
    @player2 = Player.new(player2)
    @playerturn = @player1
  end

  def start_game
    while @playerturn.lives > 0 do  # loop until the current turns player has no lives left. 
      "#{Question.new.ask_a_question(@playerturn)}" #proposes a new question and takes in teh player_turn name
      puts "P1: #{@player1.lives}/3 VS P2: #{@player2.lives}/3"
      
      #check for end of game
      if @playerturn.lives == 0
        puts "Oh no! #{@playerturn.name} is out of lives :("
        puts "----- GAME OVER -----"
        return
      end

      #after player 1 turn should swap to player 2, if player 2s turn we swap back to player then then puts new turn
      
      if @playerturn == @player1
        @playerturn = @player2
      else
      @playerturn = @player1
      end

      puts "----- NEW TURN -----"

      end
    end
end 
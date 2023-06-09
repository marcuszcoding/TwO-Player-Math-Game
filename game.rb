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
      "#{Question.new.ask_a_question(@playerturn)}" # proposes a new question and takes in teh player_turn name
      puts "P1: #{@player1.lives}/3 VS P2: #{@player2.lives}/3" # updates player life count after answer
      
      # checks lives and if 0 ends the game with 2 messages and return
      if @playerturn.lives == 0
        puts "Oh no! #{@playerturn.name} is out of lives :("
        puts "----- GAME OVER -----"
        return
      end

      # swaps player turn after intitial player 1 turn then puts new turn
      
      if @playerturn == @player1
        @playerturn = @player2
      else
      @playerturn = @player1
      end

      puts "----- NEW TURN -----"

      end
    end
end 
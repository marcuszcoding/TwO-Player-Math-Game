require "./player.rb"
require "./game.rb"

class Question
  attr_reader :ran_number1, :ran_number2, :answer # reads our question and answer
  
  def initialize
    @ran_number1 = rand(1..20) # random number with the specified range of 1 to 20 for the assignment
    @ran_number2 = rand(1..20)
    @answer = ran_number1 + ran_number2 # saves the answer for each question 
  end

  def ask_a_question(player)
    puts "#{player.name}: What does #{ran_number1} plus #{ran_number2} equal?" # question with random numbers incorporated
    reply = gets.chomp.to_i
    if reply == @answer
      puts 'YES! You are correct.'
    else
      wrong_answer(player) # takes a life if wrong answer
      puts 'Seriously? No!'
    end
  end

  def wrong_answer(player)
    player.lose_life
  end
end

# Need to keep question logic within question class.
 
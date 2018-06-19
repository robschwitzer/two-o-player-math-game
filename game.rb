require './question'
require './player'

class Game

attr_accessor :player1, :player2

  def initialize
    @players = []
    @players.push(Player.new(1))
    @players.push(Player.new(2))
    @p1      = @players[0]
    @p2      = @players[1]
  end

def game_start
  puts "------START GAME------"
  @players.cycle { |player|
    if (@p1.lives > 0 && @p2.lives > 0)
      q = Question.new
      puts "#{player.id}:"
      puts "#{q.question}"
      answer = q.answer

      if (answer == q.correct_answer)
        puts "correct"
        puts "Lives left: #{player.lives}"
        puts "----------------------"
      else
        puts "wrong"
        player.lives -= 1
        puts "Lives left: #{player.lives}"
        puts "----------------------"
      end

    else
      if(@p1.lives = 0 || @p2.lives = 0)
        puts "You lose"
        puts "-------END GAME-------"
        break
      end

    end

  }

end

def new_turn
    puts "------NEW TURN------"
    q = Question.new
    q.question
end


end



n = Game.new
p n.game_start


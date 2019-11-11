require "./question"

class Game
  attr_reader :turn

  def initialize
    @turn = 0
  end

  def score(p1, p2)
    puts "#{p1.name}: #{p1.health}/3 vs #{p2.name}: #{p2.health}/3"
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.health}/3"
  end

  def end
    puts "----- GAME OVER -----"
    puts "Byeeeee"
  end

  def next
    puts "----- NEW TURN -----"
  end

  def take_turn(player)
    @turn += 1

    q = Question.new
    puts "#{player.name}: #{q.ask}"
    print ">"

    a = q.answer?(gets.chomp)
    if !a
      player.decrease
      puts "You fool #{player.name}! How could you think that was the answer!?"
    else
      puts "Well done #{player.name}. You can do basic math..."
    end
  end
end
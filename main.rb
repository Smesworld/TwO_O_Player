require "./player"
require "./game"

p1 = Player.new("Player 1")
p2 = Player.new("Player 2")

game = Game.new

while p1.health > 0 && p2.health > 0
  if game.turn % 2 == 0
    game.take_turn(p1)
  else
    game.take_turn(p2)
  end

  if p1.health == 0
    game.winner(p2)
  elsif p2.health == 0
    game.winner(p1)
  else
    game.score(p1, p2)
    game.next
  end
end

game.end
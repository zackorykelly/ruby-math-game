require "./player"
require "./question"
require "./turn"

puts "----- New Game -----"
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
turnCount = 0

while player1.score > 0 && player2.score > 0 do
  puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
  turnCount += 1
  puts "----- Turn #{turnCount} -----"
  if turnCount % 2 == 0
    turn = Turn.new(player2)
  else
    turn = Turn.new(player1)
  end

  turn.ask
end

puts "----- Game Over -----"
if player1.score == 0
  puts "Player 2 wins with a score of #{player2.score}/3"
else
  puts "Player 1 wins with a score of #{player1.score}/3"
end
puts "Good bye!"
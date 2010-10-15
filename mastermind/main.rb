require 'game'
require 'rubygems'
require 'ruby-debug'

game = Game.new

step = 1
game_over = true
puts "Please enter #{Game::POSITION_COUNT} numbers. Between each number insert a space:"

while step <= 5
  game.next_entering(gets)
  if game.match?
    step = 6
    game_over = false
  else
    game.display_position_matching
    puts "***************"
    puts "Try again!"
    puts "***************"
  end

  step += 1
end

game_over ? puts("GAME OVER") : puts("YOU WIN")
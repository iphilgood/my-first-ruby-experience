require 'game'
require 'rubygems'
require 'ruby-debug'

game = Game.new

step = 1
game_over = true

while step <= 5
  puts "Enter a number:"
  game.next_entering(gets)
  if game.match?
    step = 6
    game_over = false
  else
    game.display_position_matching
  end

  step += 1
end

game_over ? puts("GAME OVER") : puts("YOU WIN")
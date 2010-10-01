require 'game'

game = Game.new

# game.run

step = 1
while step <= 5
  puts "Enter a number:"
  game.next_entering(gets)
  game.match?
  game.number_of_matchers
  
  # if guess < goal
  #   puts "You guessed too low!"
  # elsif guess > goal
  #   puts "You guessed too high!"
  # else
  #   puts "Right on!"
  # end
  step += 1
  "GAME OVER"
end
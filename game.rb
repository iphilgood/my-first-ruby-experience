goal = 1234
guess = 0
step = 1
while goal != guess || step <= 5
  puts "Enter a number:"
  guess = gets.to_i
  if guess < goal
    puts "You guessed too low!"
  elsif guess > goal
    puts "You guessed too high!"
  else
    puts "Right on!"
  end
  step += 1
end
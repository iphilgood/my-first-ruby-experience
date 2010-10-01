require 'color'

class Matcher
  
  def initialize(guess)
    @position_array = guess.split(' ')
    
    if @position_array.size == 3
      @position_1 = Color.new(@position_array[0])
      @position_2 = Color.new(@position_array[1])
      @position_3 = Color.new(@position_array[2])
    else
      raise "Wrong number of positions."
    end
    
  end
  
  def match?(secret)
    puts @position_1
    puts @position_2
    puts @position_3
    puts "#{secret}"
  end
  
end
require 'color'

class Matcher
  
  attr_accessor :position_1, :position_2, :position_3, :results, :positions
  
  def initialize(guess)
    @results = []
    @positions = []
    @position_array = guess.split(' ')

    
    if @position_array.size == 3
      @position_array.each do |position|
        @positions << Color.new(position)
      end
    else
      raise "Wrong number of positions."
    end
    
  end
  
  def match?(secret)
    @positions.each_with_index do |position, index|
      @results << (position.value == secret.positions[index].value)
    end
    are_all_positions_correct?
  end
  
  
  private
  def are_all_positions_correct?
    @results == [true, true, true]
  end
end
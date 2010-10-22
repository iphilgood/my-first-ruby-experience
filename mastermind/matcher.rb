require 'color'

class Matcher
  
  attr_accessor :results, :positions
  
  def initialize(guess)
    @results = []
    @positions = []
    @position_array = guess.split(' ')

    
    if @position_array.size == Game::POSITION_COUNT
      @position_array.each do |position|
        @positions << Color.new(position)
      end
    else
      raise "I SAID #{Game::POSITION_COUNT} NUMBERS!"
    end
    
  end
  
  def match?(secret)
    @positions.each_with_index do |position, index|
      @results << (position.value == secret.positions[index].value)
    end
    are_all_positions_correct?
  end
  
  def display_position_or_color_matching(secret)
    display_correct_colors_at_right_position
    display_correct_colors_at_wrong_position(secret)
  end
  
  
  private
  def are_all_positions_correct?
    win_condition = Array.new(Game::POSITION_COUNT, true)
    @results == win_condition
  end
  
  def display_correct_colors_at_right_position
    @results.each_with_index do |result, index|
      puts "black" if result
    end
  end
  
  def display_correct_colors_at_wrong_position(secret)
    # puts @positions.inspect
    # check_matcher = @results
    # check_secret = 
  end
end
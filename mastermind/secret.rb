require 'color'

class Secret
  
  attr_accessor :positions
  
  def initialize
    @positions = []
    
    (1..Game::POSITION_COUNT).step do
      @positions << Color.new(Color::AVAILABLE_COLORS[rand(3)])
    end
  end
end
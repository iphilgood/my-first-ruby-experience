require 'color'

class Secret
  
  attr_accessor :positions
  
  def initialize
    @positions = []
    
    (1..Game::POSITION_COUNT).step do
      @positions << Color.new(randomize)
    end
  end
  
  private
  def randomize
    rand(3)+1
  end
end
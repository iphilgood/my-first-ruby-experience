require 'color'

class Secret
  
  attr_accessor :positions
  
  def initialize
    @positions = [Color.new(randomize), Color.new(randomize), Color.new(randomize)]
  end
  
  private
  def randomize
    rand(3)+1
  end
end
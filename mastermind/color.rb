

class Color
  attr_accessor :value
  
  ROT = 1
  BLAU = 2
  GRUEN = 3
  
  def initialize(zahl)
    @value = zahl
    
    case zahl.to_i
    when ROT
      @value = ROT
    when BLAU
      @value = BLAU
    when GRUEN
      @value = GRUEN
    else
      raise "Color is not available"
    end
  end
  
end
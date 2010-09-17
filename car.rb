require 'engine'
require 'tire'

class Car
  attr_accessor :car_type, :color, :engine, :tires #definiert instanz variablen + getter und setter
  
  
  def initialize(color, car_type, engine_name, tire_name)
    @color = color #@color ist instanzvariable
    self.car_type = car_type
    self.engine = Engine.new(engine_name)
    
    self.tires = []
    
    (1..4).each do |counter|
      self.tires << Tire.new(tire_name)
    end
    
  end
  
  def which_color_has_the_car()
    ausgabe_text = "Meine Farbe ist momentan: " #lokale variable
    "#{ausgabe_text}#{self.color}"
  end
  
  def humanized_tire_names
    names = []
    self.tires.each do |tire|
      names << tire.name
    end
    "Meine Rändertypen sind wie folgt: #{names.join(', ')}"
  end  
end
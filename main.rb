require 'car'

ferrari = Car.new('rot', 'Ferrari', 'Turbo Diesel', 'Michelin')
mercedes = Car.new('silber', 'Mercedes', 'Normaler Benziner', 'Michelin')

puts "*"*20
puts ferrari.car_type
puts ferrari.color
puts ferrari.engine.name
puts ferrari.humanized_tire_names
puts "*"*20
puts mercedes.car_type
puts mercedes.color
puts mercedes.engine.name
puts mercedes.humanized_tire_names
puts "*"*20

# puts "*"*20
# puts mercedes.which_color_has_the_car
# puts ferrari.which_color_has_the_car
# puts "*"*20
# ferrari.color = 'blau'
# puts ferrari.which_color_has_the_car
# puts "*"*20
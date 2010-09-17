require 'cd'
require 'artist'

peachfideel = Cd.new('Peachfideel', 'Comedy', 'Peach Weber', 16, [{:length => "3:12", :name =>"Track1"}, {:length => "2:05", :name => "Track2"}])
summernachtstroum = Cd.new('Summernachtstroum', 'Hip Hop', 'Eldorado FM', 3, [{:length => "3:12", :name =>"Track1"}, {:length => "2:05", :name => "Track2"}])

puts "*".cyan*20
puts peachfideel.artist.name
puts peachfideel.title
puts peachfideel.genre
puts peachfideel.number_of_released_cds
peachfideel.tracks.each{ |track| puts "#{track[:name]} -- #{track[:length]}" }
puts "*".cyan*20
puts summernachtstroum.artist.name
puts summernachtstroum.title
puts summernachtstroum.genre
puts summernachtstroum.number_of_released_cds
summernachtstroum.tracks.each{ |track| puts "#{track[:name]} -- #{track[:length]}" }
puts "*".cyan*20
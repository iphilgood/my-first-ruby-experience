require 'cd'
require 'artist'

peachfideel = Cd.new('Peachfideel', 'Comedy', 'Peach Weber', 16, [{ :name => "Track1", :length => "3:12" }, { :name =>"Track1", :length => "2:05" }])
summernachtstroum = Cd.new('Summernachtstroum', 'Hip Hop', 'Eldorado FM', 3, [{ :name => "Intro", :length => "3:12" }, { :name => "Umuts", :length => "3:12" }, { :name => "Ka Ching", :length => "3:00"}])

puts "*".cyan*20
puts peachfideel.artist.name
puts peachfideel.title
puts peachfideel.genre
puts peachfideel.number_of_released_cds
puts peachfideel.list_all_tracks
puts "*".cyan*20
puts summernachtstroum.artist.name
puts summernachtstroum.title
puts summernachtstroum.genre
puts summernachtstroum.number_of_released_cds
puts summernachtstroum.list_all_tracks
#summernachtstroum.tracks.each{ |track| puts "#{track[:name]} -- #{track[:length]}" }
puts "*".cyan*20
require 'cd'
require 'artist'
require 'karaoke_cd'
require 'logger'

peachfideel = Cd.new('Peachfideel', 'Comedy', 'Peach Weber', 16, [{ :number => 1, :name => "Track1", :duration => 65 }, { :number => 2, :name =>"Track1", :duration => 120 }] )
# summernachtstroum = Cd.new('Summernachtstroum', 'Hip Hop', 'Eldorado FM', 3, [{ :number => 1, :name => "Intro" }, { :number => 2, :name => "Umuts" }, { :number => 3, :name => "Ka Ching" }])
summernachtstroum = KaraokeCd.new('Summernachtstroum', 'Hip Hop', 'Eldorado FM', 3, [{ :number => 1, :name => "Intro", :duration => 120 }, { :number => 2, :name => "Umuts", :duration => 120 }, { :number => 3, :name => "Ka Ching", :duration => 120 }], "And now, the ..." )


puts "*".cyan*20
puts peachfideel.artist.name
puts peachfideel.title
puts peachfideel.genre
puts peachfideel.number_of_released_cds
puts peachfideel.show_all_tracks
puts "*".cyan*20
puts summernachtstroum.artist.name
puts summernachtstroum.title
puts summernachtstroum.genre
puts summernachtstroum.number_of_released_cds
puts summernachtstroum.show_all_tracks
puts summernachtstroum.lyrics
puts "*".cyan*20


class KaraokeCd < Cd
  attr_accessor :lyrics
  
  def initialize(title, genre, artist_name, releases, tracks, lyrics)
    super(title, genre, artist_name, releases, tracks)
    @lyrics = lyrics
  end
end
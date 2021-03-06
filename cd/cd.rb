class Cd
  # @@plays = 0
  attr_accessor :title, :genre, :artist, :releases, :tracks
    
  def initialize(title, genre, artist_name, releases, tracks)
    #self.title = cd_title
    #self.genre = genre
    #self.artist = Artist.new(artist_name)
    #self.releases = releases
    
    @title, @genre, @artist, @releases, @tracks = title, genre, Artist.new(artist_name), releases, tracks
  end
  
  def number_of_released_cds
    "#{@artist.name} ".yellow + "hat bisher".blue + " #{@releases} ".red + "CD's released...".blue
  end
  
  def show_all_tracks
    my_tracks = []
    @tracks.each do |track|
      my_tracks << "#{track[:number]}. #{track[:name]} -- #{track[:duration]} seconds"
    end
    my_tracks.join("\n")
  end

  # Wenn so, dann Methodenaufruf ohne puts
  # def show_all_tracks
  #   @tracks.each do |track|
  #     puts "#{track[:name]} -- #{track[:length]}"
  #   end
  # end
  
  # def play
  #   @plays += 1
  #   @@plays += 1
  #   "This song: #@plays plays. Total #@@plays plays."
  # end
  
  def durationInMinutes
    "This LP takes #{@duration/60} minutes"
  end
  
end

class String

# 00  Turn off all attributes
# 01  Set bright mode
# 04  Set underline mode
# 05  Set blink mode
# 07  Exchange foreground and background colors
# 08  Hide text (foreground color would be the same as background)
# 30  Black text
# 31  Red text
# 32  Green text
# 33  Yellow text
# 34  Blue text
# 35  Magenta text
# 36  Cyan text
# 37  White text
# 39  Default text color
# 40  Black background
# 41  Red background
# 42  Green background
# 43  Yellow background
# 44  Blue background
# 45  Magenta background
# 46  Cyan background
# 47  White background
# 49  Default background col

# a better idea:
#class String
#    def red; colorize(self, "\e[1m\e[31m"); end
#    def green; colorize(self, "\e[1m\e[32m"); end
#    def dark_green; colorize(self, "\e[32m"); end
#    def yellow; colorize(self, "\e[1m\e[33m"); end
#    def blue; colorize(self, "\e[1m\e[34m"); end
#    def dark_blue; colorize(self, "\e[34m"); end
#    def pur; colorize(self, "\e[1m\e[35m"); end
#    def colorize(text, color_code)  "#{color_code}#{text}\e[0m" end
#end

 def black
   string = "\033[30m"
   string << self
   string << "\033[0m"
 end

 def red
   string = "\033[31m"
   string << self
   string << "\033[0m"
 end

 def green
   string = "\033[32m"
   string << self
   string << "\033[0m"
 end

 def yellow
   string = "\033[33m"
   string << self
   string << "\033[0m"
 end

 def blue
   string = "\033[34m"
   string << self
   string << "\033[0m"
 end

 def purple
   string = "\033[35m"
   string << self
   string << "\033[0m"
 end

 def cyan
   string = "\033[36m"
   string << self
   string << "\033[0m"
 end

 def white
   string = "\033[37m"
   string << self
   string << "\033[0m"
 end

end
# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode



# Initial Solution




# Refactored Solution


#def view_contents
# puts "The song contains:"
      # @song.each {|my_playlist| puts "-" 

      class Song
      	attr_reader :title, :artist 

      	def initialize(title, artist)
      		@title = title
      		@artist = artist
      	end
      	
      	def play(*song_playing)
      	   song_playing.each {|song| @song.play(song)}
    	  end
    	  
      end



class Playlist
  attr_reader :song
  
    def initialize(*songs)
    @playlist = songs
   end
  
  def add(*new_tracks)
    new_tracks.each{|song| @playlist << song}
    
  end
  
  def num_of_tracks
    puts @playlist.length
  end
  
  def remove(*remove_song_from_playlist)
    remove_song_from_playlist.each {|song| @playlist.delete(song)}
  end
  
  def includes?(song)
    @playlist.include?(song)
  end
  
  def play_all
    @playlist.each{|song| song.play}
  end
  
  def display
    @playlist.each{|song| puts "#{song.title}, #{song.artist}"}
  end
  
  #def display
  #puts @playlist.to_s
  #end
  
end





# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 
#I liked the concept of this challange. I felt it was difficult and it took me awhile, but the answers made sense to me.

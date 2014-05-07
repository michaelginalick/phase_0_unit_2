# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode
#class can be PlayList
#initialize song and playlist
#def add_song
#@song << item
#end
#def remove_item(item = @playlist.pop) # pop is returning the last item in contents array
#@playlist.delete(item)
#end

# Initial Solution




# Refactored Solution
class Song
	attr_reader :title, :artist 

	def initialize(title, artist)
		@title = title
		@artist = artist
	end

	def new(song)
	    return song
	end
end


#def view_contents
# puts "The song contains:"
      # @song.each {|my_playlist| puts "-" 





class Playlist
  def initialize(*song)
    @playlist = @song
  end
  
  
  
  def add(new_song)
    	new_song.each{|song| @playlist << song }
    	keys = song.keys
    	puts keys
  end
  
  def num_of_tracks
    	@playlist.length
  end
  
  def remove(delete_songs)
    	delete_songs.each do {|song| @playlist.delete(song)}
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
#I felt this was a great excerise! It challenged me, and took me awhile to figure out, but I feel really confident about 
#what is happening in the program.

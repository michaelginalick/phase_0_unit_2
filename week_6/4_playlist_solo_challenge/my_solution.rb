# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge with Scott Silveus.
# Note: Even though this is a solo challenge, Scott and I both did the PezDispenser
# challenge solo, so we took the opportunity to work through some difficulties
# together on this challenge.


# Pseudocode
# CREATE class Song
# 	make title and artist variables readable

# 	DEFINE initialize method with two arguments, title and artist
# 		SET both inputs to instance variables with the same names
# 	END initialize method

# 	DEFINE play method (no arguments)
# 		RETURN self
# 	END play method

# END class Song

# CREATE class Playlist

# 	DEFINE initialize method with unknown number of arguments, songs
# 		SET arguments to instance variable called playlist
# 	END initialize

# 	DEFINE add method with unknown number of arguments, new_songs
# 		for EACH song in new_songs
#			add song to playlist
#		END each
# 	END add method

# 	DEFINE num_of_tracks method (no arguments)
# 		RETURN the length of playlist array
# 	END num_of_tracks method

# 	DEFINE remove method with unknown number of arguments, songs_to_delete
# 		for EACH element in songs_to_delete
# 			DELETE the element from playlist
# 		END each
# 	END remove method

# 	DEFINE includes? method that takes 1 argument, song
# 		return true if song is in playlist, false otherwise
# 	END includes?

# 	DEFINE play_all method (no arguments)
# 		RETURN a list of all the songs in the playlist
# 	END play_all

# 	DEFINE display method (no arguments)
# 		puts all the titles, artists of the songs in playlist
# 	END display
	
# END class Playlist

# Initial Solution
class Song
	attr_reader :title, :artist 

	def initialize(title, artist)
		@title = title
		@artist = artist
	end

	def play
		return self
	end
end

class Playlist
	def initialize(*songs)
		@playlist = songs
	end

	def add(*new_songs)
		new_songs.each {|song| @playlist << song}
	end

	def num_of_tracks
		@playlist.length
	end

	def remove(*songs_to_delete)
		songs_to_delete.each {|song| @playlist.delete(song)}
	end

	def includes?(song)
		@playlist.include?(song)
	end

	def play_all
		@playlist.each {|song| song.play}
	end

	def display
		@playlist.each{|song| puts "#{song.title}, #{song.artist}"}
	end
end


# Refactored Solution






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
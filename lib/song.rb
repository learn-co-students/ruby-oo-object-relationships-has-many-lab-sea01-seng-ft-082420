require 'pry'
class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name =name
        @artist = artist
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist == nil
            nil
        else
            self.artist.name
        end
    end

end

#binding.pry

# Artist
# #new
#   is initialized with a name (FAILED - 1)
# #name
#   has an attr_accessor for name (FAILED - 2)
# #songs
#   has many songs (FAILED - 3)
# #add_song
#   takes in an argument of a song and associates that song with the artist by 
#telling the song that it belongs to that artist (FAILED - 4)
# #add_song_by_name
#   takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 5)
# .song_count
#   is a class method that returns the total number of songs associated to all existing artists (FAILED - 6)

# Song
# #new
#   is initialized with an argument of a name (FAILED - 21)
#   pushes new instances into a class variable called @@all upon initialization (FAILED - 22)
# @@all
#   is a class variable set to an array (FAILED - 23)
# .all
#   is a class method that returns an array of all song instances that have been created (FAILED - 24)
# #name
#   has a name (FAILED - 25)
# #artist
#   belongs to an artist (FAILED - 26)
# #artist_name
#   knows the name of its artist (FAILED - 27)
#   returns nil if the song does not have an artist (FAILED - 28)
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

#Write a class method, .genre_count, that returns a hash in #which the keys are the names of each genre. Each genre name #key should point to a value that is the number of songs that #have that genre.
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] 
        genre_count[genre] += 1
      else #if it's a new genre
        genre_count[genre] = 1
      end
    end
    genre_count
  end
#You will need to iterate over the @@genres array and populate a #hash with the key/value pairs. You will need to check to see #if the hash already contains a key of a particular genre. If #so, increment the value of that key by one, otherwise, create #a new key/value pair.

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist] 
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end

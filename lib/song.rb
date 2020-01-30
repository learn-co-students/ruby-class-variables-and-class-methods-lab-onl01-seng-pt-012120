require "pry"

class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    # returns an array of all the genres of existing songs
    # control for duplicates
    unique_array = []
    @@genres.each do |genre|
      if !unique_array.include?(genre)
        unique_array << genre
      end
    end
    unique_array
  end
  
  def self.artists
    # returns an array of unique artists, no duplicates
    unique_array = []
    @@artists.each do |artist|
      if !unique_array.include?(artist)
        unique_array << artist
      end
    end
    unique_array
  end
  
  def self.genre_count
    # returns a hash
    # {"rap" => 5, "rock" => 1, "country" => 3}
    genre_hash = {}
    @@genres.each do |genre|
      if !genre_hash[genre]
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
    end
    genre_hash
  end
  
  def self.artist_count
    # returns a hash similar to the hash in genre_count
    artist_hash = {}
    @@artists.each do |artist|
      if !artist_hash[artist]
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    end
    artist_hash
  end

end

class Song
  attr_accessor :name, :artist, :genre
  @@count= 0
  @@artists = [ ] 
  @@genres = [ ]

   def initialize(name, artist, genre)
     @name = name
     @artist = artist
     @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    songs = { }
    @@genres.each do |genre| 
     if songs[genre]
      songs[genre] += 1
    else
     songs[genre] = 1
      end
     end
     songs
  end
    
  def self.artist_count
    artists_two = { }
    @@artists.each do |artist_one|
      if artists_two[artist_one]
        artists_two[artist_one] += 1
      else
        artists_two[artist_one] = 1
        end
      end
      artists_two
    end
end
class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
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
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @@genre_count = {}
    @@genres.group_by(&:itself).each {|h,k| @@genre_count[h] = k.count}
    return @@genre_count
  end
  
  def self.artist_count
    @@artist_count = {}
    @@artists.group_by(&:itself).each {|h,k| @@artist_count[h] = k.count}
    return @@artist_count
  end
  
end
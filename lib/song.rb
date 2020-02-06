class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  #@@genre_count =
  #@@artist_count

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
    @@genres.uniq!
    #here we can use self to call on a getter method
    #uniq! method is used on an array to fetch the collection of all unique elements
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] #this is telling us it will push the genre if it is already in the hash
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
end

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

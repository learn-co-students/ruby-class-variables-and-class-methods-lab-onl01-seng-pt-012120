require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@artists = [] 
  @@genres = [] 
  
  def initialize(name,artist,genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@artists << artist #if @@artists.include?(artist) == false 
    @@genres << genre #if @@genres.include?(genre) == false   
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
    #@@genres.length 
    hash = {}
    @@genres.map do |elem| 
      if hash.include?(elem) == false
        hash[elem] = 1 
      else 
        hash[elem] += 1
      end 
    end
    hash
  end 
  #binding.pry
  def self.artist_count
    hash = {}
    @@artists.map do |elem| 
      if hash.include?(elem) == false
        hash[elem] = 1 
      else 
        hash[elem] += 1
      end 
    end
    hash
  end 
  
end 
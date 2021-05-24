require 'pry'

class Artist 
  attr_accessor :name, :songs 
   @@all = [] 
  extend Concerns::Findable


  def initialize(name)
    @name = name
    @songs = [] 
  end

  
  def self.all 
    @@all
  end 
  
  
  def self.destroy_all
    @@all = []
  end 
  
  
  def save 
   @@all << self 
  end 
  
  
  def self.create(name)
    new_artist = self.new(name)
    new_artist.save 
    new_artist 
  end 
  
  
  def songs
    @songs
  end 
  
  
  def genres 
    @@all.Songs.genres << genres 
    if all.Songs.genres 
  end 
end 
  
   def add_song(song) 
      song.artist = self unless song.artist
    self.songs << song unless songs.include?(song)
  end 


  def self.find_by_name(name, genre)    
    song = Song.new(name, genre)
  end 
end 


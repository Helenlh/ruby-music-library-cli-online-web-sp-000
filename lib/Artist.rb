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
  
  def add_song(song) 
    @songs << song 
    song.artist = self unless song.artist  
  end 
  
  

  def songs
    Song.all
   end
  
  
  def genres 
    self.songs.collect {|song| song.genre}.uniq 
  end 
  


  def self.find_by_name     
    song = Song.new(name, genre)
  end 
end 

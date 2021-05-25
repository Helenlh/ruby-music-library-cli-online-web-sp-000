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
    # song.artists = self unless song.artist
    # self.songs << songs unless songs.include?(song) 
    @songs << song 
    self.songs 
  end 
  
  

  def songs
    self.songs
    self.songs << song
    @songs.collect
    end 
  
  
  def genres 
    self.songs.collect {|song| song.genre}.uniq
  end 
  


  def self.find_by_name     
    song = Song.new(name, genre)
  end 
end 



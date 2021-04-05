require 'pry'

class Artist 
  attr_accessor :name
   @@all = [] 
  extend Concerns::Findable
  
  

  def initialize(name)
    @name = name
    @songs = []  
  end


  def name 
    @name
  end 
  
  
  def name=(name)
    @name = name 
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
  
  
  def songs=(songs)
   @songs = songs 
  end

  def self.songs
   new_artist = self.new(songs)
    new_artist.save 
    new_artist
  end 
 
  def self.add_song(song)
     Artist.song << song
    
  end 
  

  
  def self.find_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end 
end 

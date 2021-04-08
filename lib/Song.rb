require 'pry'


class Song
  attr_accessor :name
  attr_reader :artist 
  @@all = []


   def initialize(name = "Alison", artist = nil)
    #the starting values for name and artist, instance variables
    @name = name
    self.artist=artist unless artist == nil 
  end 
    
    
  
  
  
    def song
       new_song = Song.new ("Jump Around") 
    end 
  
  
  def self.all 
     @@all 
  end 
      
      
  def save 
     @@all << self 
  end
  
  
  def self.create(song)
    new_song = Song.new(name) 
    @@all << new_song
    new_song 
  end 
  

  def artist=(artist) 
    @artist = artist
    artist.add_song(self) 
  end 
  
  
  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")[1] 
    artist_one = file_name.split(" - ") 
    new_song = Song.new(song_name)
    new_song.artist_name=(artist_one)
    new_song
  end
  
  
  def self.find_by_name(name)
    @@all.find {|song| song.name == name}
  end 
  
  
  def genre
    if self.genre != nil
    @song << Song.genre 
  end
end 
  
  
 def self.destroy_all
    @@all = []  
  end 
  end 
 
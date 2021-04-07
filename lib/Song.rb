require 'pry'


class Song
  attr_accessor :name, :artist 
  @@all = []

  
  def initialize(name = "Alison", artist = nil)
    @name = name 
    self.artist = artist if artist 
  end 
   
   def name 
     @name = "In the Aeroplane Over the Sea"
  end 
  
  
  def name=(name)
    @name = name 
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
  

 def artist 
   @artist 
  end 
  
  
  
  def artist=(artist)
    @artist = artist
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
#end of class 

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

  def song
   new_artist = self.new(songs)
    new_artist.save 
    new_artist
  end
  
  def add_song(song)
    binding.pry
   
    # So, song.artist = self is saying the artist of this Song instance is the instance of Artist that we're calling the method on.
    
    #you're saying that because I have an @artist in Song, this works.
     
    # .artist is an attribute of the Song class, and in this add_song method, we're setting the value of that attribute to be an instance of the Artist class.
     
     song.artist = self
    # song.artist << artist unless song.artist
    # song.artist = artist 
   end 
  
  song
=> #<Song:0x0000000001f62010
 @artist="In the Aeroplane Over the Sea",
 @name="Alison">
  
  def self.find_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end 
end 

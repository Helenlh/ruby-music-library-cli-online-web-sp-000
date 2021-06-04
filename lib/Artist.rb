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
    song.artist = self unless song.artist 
    Songs << self 
     #artist evaluates to @artist which is Artist: whatever the number in memory is.
#song is an object which is being passed into the method.
#we want to add the song to the song's array unless it is already in there. 
  end 
  
  #rspec ./spec/004_songs_and_artists_spec.rb:72 # Associations — Song and Artist: 
  # Artist #add_song adds the song to the current artist's 'songs' collection

  def songs 
    @@all
   end
  
  
  def genres 
    self.songs.collect {|song| song.genre}.uniq 
  end 
  


  def self.find_by_name     
    song = Song.new(name, genre)
  end 
end 

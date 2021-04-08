require 'pry'

class Artist 
  attr_accessor :name, :songs 
   @@all = [] 
  extend Concerns::Findable
  
  
# describe "Artist" do
#   let(:artist) { Artist.new("Neutral Milk Hotel") }

#   describe "#initialize" do
#     it "accepts a name for the new artist" do
#       new_artist = Artist.new("Slowdive")

#       new_artist_name = new_artist.instance_variable_get(:@name)

#       expect(new_artist_name).to eq("Slowdive")


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
  
  
  def artist=(artist)
    artist.add_song
    #(song) 
    @artist = artist
  end 
  
  
  
   def add_song(song) 
      artist.song = self unless song.artist
    songs << song unless songs.include?(song) 
  end 


  def self.find_by_name(name, genre)     
    song = Song.new(name, genre)
  end 
end 

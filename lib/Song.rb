require 'pry'


class Song
  attr_accessor :name, :artist 
  attr_reader :genre 

  @@all = []

  def initialize(name, artist = nil, genre = nil) 
    self.artist = artist if artist
    #self is a song instance 
    #self inside an instance method, self refers to an instance.  if self is inside of a class method, self refers to the class
    @name = name 
    @@all << self
    self.genre = genre if genre
  end
  
  # it "can be invoked with an optional second argument, an Artist object to be assigned to the song's 'artist' property (song belongs to artist)" do
  #       song_with_artist = Song.new("Two-Headed Boy", artist)

  #       expect(song_with_artist.instance_variable_defined?(:@artist)).to be(true)
  #       expect(song_with_artist.instance_variable_get(:@artist)).to be(artist)
    
  # def artist=(artist)
  #   @artist = artist
  #   artist.add_song(self) 
  # end
  

  def genre=(genre)
     @genre = genre
     genre.songs << self unless genre.songs.include? self
   end 

#read about self 

  def self.all 
    @@all
  end

  def self.destroy_all
    all.clear
  end

  def save
    self.class.all << self
    self
  end

  def self.create(name)
    new(name).save
  end

  def self.find_by_name(name)
    all.detect{ |s| s.name == name }
  end

  def self.find_or_create_by_name(name)
    find_by_name(name) || create(name)
  end

  def self.new_from_filename(filename)
    parts = filename.split(" - ")
    artist_name, song_name, genre_name = parts[0], parts[1], parts[2].gsub(".mp3", "")

    artist = Artist.find_or_create_by_name(artist_name)
    genre = Genre.find_or_create_by_name(genre_name)

    new(song_name, artist, genre)
  end


  def self.create_from_filename(filename)
    new_from_filename(filename).save
  end
  
  
  def artist_name= (name)
    if (self_artist.nil?)
      self.artist = Artist.new(name)
    else 
      self.artist_name = name 
    end 
  end 
  
  
  def new_song(name, genre)
    Song.new(name.genre)
  end 
end

   
require 'pry'


class Song
  attr_accessor :name, :artist 
  attr_reader :genre 

  extend Concerns::Findable
  
  @@all = []

     
      def initialize(name) 
        self.artist = artist if artist 
    @@all << self
    #artist.song
    song.artist = Song.new 
    self.genre = genre if genre
  end



  def artist=(artist) 
       @artist = artist
    artist.add_song(self) 
  end
  

  def genre=(genre)
     @genre = genre
     genre.songs << self unless genre.songs.include? self
   end 


  def self.all 
    @@all
  end

  def self.destroy_all
    all.clear
  end

  def save
    @@all << self
    self
  end

  def self.create(name)
    song = new(name)
    song.save
  end

  def self.find_by_name(name)
    all.detect{ |s| s.name == name } 
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

   
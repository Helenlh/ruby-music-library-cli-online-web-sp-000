class Artist 
  attr_accessor :name, :song, :artist 
   @@all = [] 
  extend Concerns::Findable
  
  
  def initialize(name)
    @name = name
    @songs = []  
    save 
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
  
  
  def create(name) 
    artist = Artist.new(name) 
    save 
  end
  
  
  def add_song(song)
    
  end 
  
  
 def songs   
   artist.songs << song
   
   Song.all.select{|song| song.self == self}
  end 
  
  
  def self.find_by_name(name)
    @@all.find {|person| person.name == name}
  end 
end 
#end of class


# def self. describe "#songs" do
#       it "returns the artist's 'songs' collection (artist has many songs)" do
#         expect(artist.songs).to eq([])

#         artist.songs << song

#         expect(artist.songs).to include(song)
#       endcreate(name)
#     self.new(name) 
#     return Artist
#   end 

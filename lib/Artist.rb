class Artist 
   @@all = [] 
  
  def initialize(name, song)
    @name = name
    @song = []  
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
  
  
  def self.create(name)
    self.new(name) 
    return Artist
  end 
  
  
  def add_song(song)
    song.artist = self
  end 
  
  
  
    
end
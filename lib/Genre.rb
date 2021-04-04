class  Genre 
  @@all = []

  def initialize(name)
    @songs = []
    @name = name 
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
  
  
  def save 
    @@all << self 
  end 
  
  
  def self.create(name)
    self.new(name)
    return self 
  end 
  
  
  def songs 
    self.songs 
  end 
  
  
  def self.destroy_all 
    @@all = [] 
  end 
  
  
  def create_from_filename
  end 
  
  
  
  def self.artists
  end 
  
end
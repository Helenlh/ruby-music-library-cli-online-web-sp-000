class  Genre 
  attr_accessor :name
  attr_reader :songs 
  @@all = []


  def initialize(name)
    @songs = []
    @name = name  
  end 
  
#   attr_reader : This accessor generates the automatic Getter method for the given item.
# attr_writer : This accessor generates the automatic Setter method for the given item.
  
  
  def self.all 
    @@all 
  end 
  
  
  def save 
    @@all << self
  end 
  
   
  def self.destroy_all 
    @@all = [] 
    #can also call @@all.clear 
  end 
  
  
  def self.create(name)
    new_genre = self.new(name)
    @@all << new_genre 
     new_genre
  end 
  
  
  def self.destroy_all 
    @@all = [] 
  end 
  
  
  def create_from_filename
  end 
  
  
  
  def self.artists
  end 
  
  
 
end 
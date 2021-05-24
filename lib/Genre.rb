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
  
  # Classical set method
  # def website=(website)
  #   @website = website
  
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
  
  
  def create_from_filename
  end 
  
  
  def songs 
    Song.all.map do |song| 
      song 
    end 
  end 
    
    
    def artists 
      songs.map do |genre| 
        genre.artist 
      end 
    end 
end 